cask "font-sarasa-gothic" do
  version "1.0.42"
  sha256 "af03691e435f4c63457bdea791d9ab15c3c8f57afaf2d290dd2c9a8dd3dc63a0"

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
