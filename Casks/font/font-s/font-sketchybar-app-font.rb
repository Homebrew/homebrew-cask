cask "font-sketchybar-app-font" do
  version "2.0.81"
  sha256 "857d05bb41b5b7243f5c4451da54a31f24e5056d89c734571ada7e51d8f178d7"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
