cask "font-sketchybar-app-font" do
  version "3.0.18"
  sha256 "7235be55e92eee3b0ee4e8f8761add98a7158aeb7d925a595f8c2c6da1d62095"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
