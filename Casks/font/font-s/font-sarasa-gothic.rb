cask "font-sarasa-gothic" do
  version "1.0.44"
  sha256 "8c7772154608e637184c1097e7e2c82a96cbf331d82541f82072fb532928ee41"

  url "https://github.com/be5invis/Sarasa-Gothic/releases/download/v#{version}/Sarasa-SuperTTC-#{version}.7z"
  name "Sarasa Gothic"
  name "更纱黑体"
  name "更紗黑體"
  name "更紗ゴシック"
  name "사라사고딕"
  homepage "https://github.com/be5invis/Sarasa-Gothic"

  font "Sarasa-SuperTTC.ttc"

  zap :not_required
end
