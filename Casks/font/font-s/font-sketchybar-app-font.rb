cask "font-sketchybar-app-font" do
  version "2.0.63"
  sha256 "d9efb4660e3f248a0b807c6b24e0d7a440fb55bf844da5b3a9affd0556821421"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
