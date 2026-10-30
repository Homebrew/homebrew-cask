cask "font-sketchybar-app-font" do
  version "3.0.15"
  sha256 "384ae5481ef9710d092269caf010c78a17e4341f202590e2c60c9c32d646aa39"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
