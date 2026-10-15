cask "font-sketchybar-app-font" do
  version "3.0.8"
  sha256 "e2a449b09a92bb018a4be24598ad8f0fab70d9a4b15b6d434906da772ba54d4e"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
