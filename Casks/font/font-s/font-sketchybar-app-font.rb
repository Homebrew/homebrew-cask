cask "font-sketchybar-app-font" do
  version "2.0.36"
  sha256 "2bfcb137581cdc8027cf905b2e5e0e4c6303b8639d386c93deecf35433747069"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
