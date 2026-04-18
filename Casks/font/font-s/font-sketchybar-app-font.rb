cask "font-sketchybar-app-font" do
  version "2.0.60"
  sha256 "a551ac2cac6dc69c9b9c7a4dea8ac52f17e05b2d4d6ffa32a397dba137812e4e"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
