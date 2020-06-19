export default "#define GLSLIFY 1\nuniform sampler2D tShadow;\nuniform vec3 uShadowColor;\nuniform float uAlpha;\n\nvarying vec2 vUv;\n\nvoid main()\n{\n    float shadowAlpha = 1.0 - texture2D(tShadow, vUv).r;\n    shadowAlpha *= uAlpha;\n\n    gl_FragColor = vec4(uShadowColor, shadowAlpha);\n}\n";