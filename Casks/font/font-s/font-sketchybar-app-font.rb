cask "font-sketchybar-app-font" do
  version "3.0.21"
  sha256 "d3580dc30f1a907c78a7174cbe78d62802acde8d2f0b55e845f9a9fbec8e365e"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
