cask "font-sketchybar-app-font" do
  version "2.0.40"
  sha256 "835604784960fff458b849cfb5c69d1c7d7aa7a712d3e03c17c5f3798bbc1d98"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
