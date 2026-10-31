cask "font-sketchybar-app-font" do
  version "3.0.16"
  sha256 "4f860f79866d2ec06139135750e204d206fd7cfe654b106377ec530b7ea45455"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
