cask "font-sketchybar-app-font" do
  version "3.0.14"
  sha256 "ca64ff813b3362abc52c32cd0cc99ba02c86dbf4d271299f5c033cc21570fc5b"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
