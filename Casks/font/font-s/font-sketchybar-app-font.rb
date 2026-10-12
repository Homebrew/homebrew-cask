cask "font-sketchybar-app-font" do
  version "3.0.7"
  sha256 "feba6ca8187327fbce3556313fc3b8404702a83a52d701636d9862bbed976aa4"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
