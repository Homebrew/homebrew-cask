cask "font-sketchybar-app-font" do
  version "3.0.1"
  sha256 "bce1391a70e04117587de26e4f004c4fa6c495b98740a4dc20ab085d385266d5"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
