cask "font-sarasa-gothic" do
  version "1.0.22"
  sha256 "d6f1264862f61a906df9cde564d637e82dc480fd08d0b6236320fccc69ec491e"

  url "https://github.com/be5invis/Sarasa-Gothic/releases/download/v#{version}/Sarasa-TTC-#{version}.7z"
  name "Sarasa Gothic"
  name "更纱黑体"
  name "更紗黑體"
  name "更紗ゴシック"
  name "사라사고딕"
  homepage "https://github.com/be5invis/Sarasa-Gothic"

  font "Sarasa-Bold.ttc"
  font "Sarasa-BoldItalic.ttc"
  font "Sarasa-ExtraLight.ttc"
  font "Sarasa-ExtraLightItalic.ttc"
  font "Sarasa-Italic.ttc"
  font "Sarasa-Light.ttc"
  font "Sarasa-LightItalic.ttc"
  font "Sarasa-Regular.ttc"
  font "Sarasa-SemiBold.ttc"
  font "Sarasa-SemiBoldItalic.ttc"

  # No zap stanza required
end
