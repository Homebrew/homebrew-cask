cask "font-sketchybar-app-font" do
  version "3.0.34"
  sha256 "1363ffc4804a8b8995915902910c12b49619e31abf0dd1e4cb3d0b929fc41c52"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
