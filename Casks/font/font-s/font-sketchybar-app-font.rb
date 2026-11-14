cask "font-sketchybar-app-font" do
  version "3.0.24"
  sha256 "c7b51fe7b9e2bd203c7a58e94575381d15db858fb808bc13402dccc537f1f56e"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
