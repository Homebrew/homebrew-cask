cask "font-sketchybar-app-font" do
  version "3.0.2"
  sha256 "d6c78dd8dc1526071581fde674c702de4bd561641d5f2220f3d33953025a3bec"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
