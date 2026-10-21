cask "font-sketchybar-app-font" do
  version "3.0.12"
  sha256 "3461f96bcb05c0fb1c3c42abfb14f6f85a0fcbc3e1dd9a713689e29aa41a410d"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
