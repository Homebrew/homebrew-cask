cask "font-sketchybar-app-font" do
  version "2.0.30"
  sha256 "d8ef40fb5683433584648df453a9c20896c2f0362bc2dc3465ed104d42b8ee9d"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
