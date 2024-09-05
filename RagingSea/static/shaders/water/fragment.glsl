uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;
uniform float uFogAmount;

varying float vElevation;
varying vec3 vCameraDistance;

void main() {
    vec3 color = mix(uDepthColor, uSurfaceColor, (vElevation + uColorOffset) * uColorMultiplier );
    vec4 originalColor = vec4(color.rgb, 1.0);

    gl_FragColor = mix(originalColor, fogColor, fogAmount);
}