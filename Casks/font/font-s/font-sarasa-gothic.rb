cask "font-sarasa-gothic" do
  version "1.0.34"
  sha256 "7695d3aeaa3d02ec87e6234b595381aa4a0948fd73b47fa6ada6f3cbbf75a32e"

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
