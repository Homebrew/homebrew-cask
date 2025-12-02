cask "font-sketchybar-app-font" do
  version "2.0.49"
  sha256 "6da10bd7c4093631930d12fd78cb622d1d14768fedf153385d80381f302327a1"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
