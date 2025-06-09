cask "font-sketchybar-app-font" do
  version "2.0.35"
  sha256 "314919577aec0d81daf694973fcedd8ff6e28d7205eace5a5d9d9c572b0f6933"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
