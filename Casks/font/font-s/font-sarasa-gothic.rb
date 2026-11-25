cask "font-sarasa-gothic" do
  version "1.0.43"
  sha256 "1aeed1a503d628b416c0fcea798f57322b226b0a26e2f178e1870929be7c07bf"

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
