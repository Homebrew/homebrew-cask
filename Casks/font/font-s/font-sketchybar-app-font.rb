cask "font-sketchybar-app-font" do
  version "3.0.10"
  sha256 "e611207f50a65485d4aebbba03dc315fda1f068f9f6e51f9fe05fa75cbe4c299"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
