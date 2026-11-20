cask "font-sketchybar-app-font" do
  version "3.0.28"
  sha256 "30d6852a6d99911d24cb7349bce8f4ebfb2433d3db97e010039901f18cd09cfb"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
