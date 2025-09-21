cask "font-sketchybar-app-font" do
  version "2.0.43"
  sha256 "cd1ed0aeeb39aa70e21eb824b537ff7fd9f9ed2206feab5dae552a78a9c97819"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
