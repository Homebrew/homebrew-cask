cask "font-sketchybar-app-font" do
  version "3.0.23"
  sha256 "c8951878b45e66eb0e7e9d92b077359732282fab90afe32ee6db127f4296088d"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
