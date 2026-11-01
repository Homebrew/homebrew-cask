cask "font-sketchybar-app-font" do
  version "3.0.17"
  sha256 "14f69850211dd9a2d72c494c59cbdc12503dca43200b8df951a9b095612e6342"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
