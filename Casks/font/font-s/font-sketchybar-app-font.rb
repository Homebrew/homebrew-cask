cask "font-sketchybar-app-font" do
  version "2.0.45"
  sha256 "b57e54ac465f269d2b6b79574d957aefa312b0ec73e7c825d02e740499ad24a6"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
