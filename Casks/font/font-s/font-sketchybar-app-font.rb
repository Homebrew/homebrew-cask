cask "font-sketchybar-app-font" do
  version "2.0.70"
  sha256 "88339c8e639263bc3c2aa0835bedfdcdc85c30e5b3352b978695a1b2c70aba4b"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
