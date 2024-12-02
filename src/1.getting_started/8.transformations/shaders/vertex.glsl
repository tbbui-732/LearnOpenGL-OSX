//#version 330 core
//layout(location = 0) in vec3 aPos;
//layout(location = 1) in vec3 aColor;
//layout(location = 2) in vec2 aTexCoord;
//
//out vec3 ourColor;
//out vec2 ourTexCoord;
//
//uniform mat4 transform;
//
//void main() 
//{
//    gl_Position = transform * vec4(aPos, 1.0f); 
//    ourColor = aColor;
//    ourTexCoord = aTexCoord;
//}

#version 330 core
layout(location = 0) in vec3 aPos;

uniform mat4 transform = mat4(
    1.0f, 0.0f, 0.0f, 0.0f,
    0.0f, 1.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 1.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 1.0f
);

void main()
{
    gl_Position = transform * vec4(aPos, 1.0f);
}
