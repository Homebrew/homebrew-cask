cask "font-sketchybar-app-font" do
  version "2.0.69"
  sha256 "7d580c964c16827633cfd6217609c2c37f0052586cd60340455d99e3c0c31546"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
