cask "font-sketchybar-app-font" do
  version "2.0.80"
  sha256 "989f7049f2d0253e32d430f63853d3a2fdbf1941ca9198b95fb07f07f8580c94"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
