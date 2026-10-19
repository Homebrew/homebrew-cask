cask "font-sketchybar-app-font" do
  version "3.0.11"
  sha256 "e366106cb373470e89c93c4a10a69f139cd8721d6a8fab186a7a657dc74a50e7"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
