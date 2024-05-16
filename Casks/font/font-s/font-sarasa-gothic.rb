cask "font-sarasa-gothic" do
  version "1.0.12"
  sha256 "7190a1ccc18d71e6d739290f95cd7701025b50221680f03a821ce61a11007c51"

  url "https://github.com/be5invis/Sarasa-Gothic/releases/download/v#{version}/Sarasa-TTC-#{version}.7z"
  name "Sarasa Gothic"
  name "更纱黑体"
  name "更紗黑體"
  name "更紗ゴシック"
  name "사라사고딕"
  desc "CJK programming font based on Iosevka and Source Han Sans"
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
