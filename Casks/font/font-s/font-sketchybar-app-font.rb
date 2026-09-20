cask "font-sketchybar-app-font" do
  version "3.0.0"
  sha256 "0f1eaea87fd177576d3d4e8223b0d237e0ff5adacc7121c3633678298675b336"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
