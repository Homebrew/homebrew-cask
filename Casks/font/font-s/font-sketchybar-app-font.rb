cask "font-sketchybar-app-font" do
  version "2.0.39"
  sha256 "91a66ff25ae3c6cc49438fe81259da3f2a5ef89a4823277c536798a079a004ce"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
