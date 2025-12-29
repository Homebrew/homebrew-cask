cask "font-sketchybar-app-font" do
  version "2.0.50"
  sha256 "7459d51c93e23bc18365aa610a27690d35bc1959b634ae0d84950ef22696fa5b"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
