cask "font-sketchybar-app-font" do
  version "3.0.32"
  sha256 "a412761d1c279b81a3c91e357403b9547a7128a61eaa830bbb5a53a11e7f3a0b"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
