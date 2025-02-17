cask "font-sketchybar-app-font" do
  version "2.0.32"
  sha256 "6119360368bb9862b89f5341d9ceb6112ee6b81a50c336a30c64167f77f9442c"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
