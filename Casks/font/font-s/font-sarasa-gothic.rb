cask "font-sarasa-gothic" do
  version "1.0.13"
  sha256 "20c1036706de2d6deabbe68ff3d114e31b805a48669868ecd3b5bb788da86ac9"

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
