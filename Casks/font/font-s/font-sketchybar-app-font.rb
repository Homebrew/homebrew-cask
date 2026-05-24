cask "font-sketchybar-app-font" do
  version "2.0.61"
  sha256 "94d0661430a40f26d584938574b870f8b9b14acc0bc1ffcc78901a0f12743320"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
