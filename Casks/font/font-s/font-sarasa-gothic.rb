cask "font-sarasa-gothic" do
  version "1.0.41"
  sha256 "1c62318fd4bb0a3bb365dcd8e0d3cf9c2d4d640fc3cb3653bf7bc56bd2072359"

  url "https://github.com/be5invis/Sarasa-Gothic/releases/download/v#{version}/Sarasa-SuperTTC-#{version}.7z"
  name "Sarasa Gothic"
  name "更纱黑体"
  name "更紗黑體"
  name "更紗ゴシック"
  name "사라사고딕"
  homepage "https://github.com/be5invis/Sarasa-Gothic"

  font "Sarasa-SuperTTC.ttc"

  # No zap stanza required
end
