cask "font-sketchybar-app-font" do
  version "2.0.29"
  sha256 "0e39ca14d7f305f675b7424acf2d175517992dc7f1468deca9cd979ec0b8804a"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
