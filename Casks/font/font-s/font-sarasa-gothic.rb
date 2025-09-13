cask "font-sarasa-gothic" do
  version "1.0.33"
  sha256 "3ce010cb15d9da7b0cb5170d51fdcb6b5646fdbc9fce198ffe17b611109b8aec"

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
