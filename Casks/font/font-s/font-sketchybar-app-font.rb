cask "font-sketchybar-app-font" do
  version "2.0.52"
  sha256 "28dea29912e45254ffa4df66f259458eba202bb1a2d75d9895f975543257577b"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
