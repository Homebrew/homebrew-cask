cask "font-sketchybar-app-font" do
  version "2.0.83"
  sha256 "6b3270344ea0dba1afccc7aa4739b92f963c1597abfae17dafab09d9983d1fbe"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
