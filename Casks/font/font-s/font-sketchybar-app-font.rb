cask "font-sketchybar-app-font" do
  version "3.0.31"
  sha256 "0bebc1b89caca0cc4d2aa80a4c549b41d171f6c3ed14a2fa583294e50af872ee"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
