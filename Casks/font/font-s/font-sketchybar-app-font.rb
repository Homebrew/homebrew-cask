cask "font-sketchybar-app-font" do
  version "2.0.56"
  sha256 "0e46578ecef32c9faf7aaae659e5c192f98c5536bebaad8a70344c0e29f83283"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
