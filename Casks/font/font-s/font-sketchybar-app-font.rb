cask "font-sketchybar-app-font" do
  version "2.0.47"
  sha256 "86b0e335e84d5913bf8dc67ca8e75b896df1f79cb9d09edaa1d495ea3b4c125a"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
