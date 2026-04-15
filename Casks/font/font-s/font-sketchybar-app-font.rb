cask "font-sketchybar-app-font" do
  version "2.0.58"
  sha256 "54a341e6aa3f820db6230c84df43abea972d2171d850152f99da7abfb2e0c04d"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
