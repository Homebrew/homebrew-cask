cask "font-sketchybar-app-font" do
  version "3.0.27"
  sha256 "93366e5d0e92b0fb165650db1970d9fcb8b9a90294c57e8ac239ba01221b0ae5"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
