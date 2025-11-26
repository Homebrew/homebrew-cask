cask "font-sketchybar-app-font" do
  version "2.0.48"
  sha256 "b80681a3387a30044f5effa39bdc4e0dd5611d221e1ab37d66f5eeb5e3eebb2a"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
