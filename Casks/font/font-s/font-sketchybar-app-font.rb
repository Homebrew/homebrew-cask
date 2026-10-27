cask "font-sketchybar-app-font" do
  version "3.0.13"
  sha256 "41cec2c384d1d5a770e093f8e4d03a969cf08231af40bafc92cd18d3934ff80e"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
