cask "font-sketchybar-app-font" do
  version "3.0.33"
  sha256 "81d32ec3102ed9c29405019abc7cf50868e37f70cec8af0eb5f9224c2cbc63bf"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
