cask "font-sketchybar-app-font" do
  version "3.0.35"
  sha256 "733adff62f6a011ec207999fc5aedc517661777dea11ea4436c12bd66398e5ca"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
