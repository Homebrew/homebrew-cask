cask "font-sketchybar-app-font" do
  version "2.0.59"
  sha256 "9dc6279c78f0eeb3075e909f976b26ea9178830be54c420a8f3026f4fdaa7417"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
