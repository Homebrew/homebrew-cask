cask "font-sketchybar-app-font" do
  version "3.0.30"
  sha256 "18ebbbe577541a1badb5e33405434ade112b48b0ab71a7f358218f9567ad4b9a"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
