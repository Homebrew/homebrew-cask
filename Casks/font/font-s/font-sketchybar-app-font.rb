cask "font-sketchybar-app-font" do
  version "2.0.84"
  sha256 "9f0653faf37a9e53ac64494d28849be1d3c70da093bdb8d42996427b8165f004"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
