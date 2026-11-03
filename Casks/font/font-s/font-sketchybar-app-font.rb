cask "font-sketchybar-app-font" do
  version "3.0.19"
  sha256 "0223e6ebc5c0d95bec21ded79c9b634d4506b6a7af013e1d6589c7a830f99633"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
