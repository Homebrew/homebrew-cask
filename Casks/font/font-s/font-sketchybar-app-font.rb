cask "font-sketchybar-app-font" do
  version "3.0.26"
  sha256 "4eec78fd26315619f227b267ce328e28cd2f519a9c3c7fec7c128a2fbff8e5e3"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
