cask "font-sketchybar-app-font" do
  version "2.0.38"
  sha256 "b3473e00750bac1ad68fad5b1b0c52105e27ed7853f2d08b91a534485234843b"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
