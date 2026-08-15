cask "font-sketchybar-app-font" do
  version "2.0.76"
  sha256 "2939120bd6a36ac4ed3497ee82e37520a5da02d47bee4eb1f08fc9eb961b2c42"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
