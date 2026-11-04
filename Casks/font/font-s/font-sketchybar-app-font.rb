cask "font-sketchybar-app-font" do
  version "3.0.20"
  sha256 "eee36e18f8d650d5677ed18a74bd97a94c3c075fa2073603a9187f8482400d77"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
