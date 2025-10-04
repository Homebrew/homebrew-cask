cask "font-sketchybar-app-font" do
  version "2.0.46"
  sha256 "74dce0f0bc9871d42b7776c8d0e7d011bf2b080ec1541c524c8ce4c5872186e6"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
