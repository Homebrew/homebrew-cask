cask "font-sketchybar-app-font" do
  version "3.0.6"
  sha256 "ba1a31523eba949ca826e22c2c4058926693d1c20fb69ba34ed9809733a4beb8"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
