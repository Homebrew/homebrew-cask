cask "font-sketchybar-app-font" do
  version "2.0.72"
  sha256 "addef380e8e07a50db8314787fdedbb212d09929d1935342c935c2ab3b38074b"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
