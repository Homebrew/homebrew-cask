cask "font-sarasa-gothic" do
  version "1.0.36"
  sha256 "6f1bbb6f2da0f3ec4bbc45b6fa03ae39ef32725c65626b9914d77f2a9a373c98"

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
