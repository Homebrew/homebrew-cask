cask "font-sketchybar-app-font" do
  version "2.0.79"
  sha256 "6a9d9cab44195d5b4b7abf23eb0a6a663fae7de91656838618d83b5ed5f45f46"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
