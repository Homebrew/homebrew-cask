cask "font-sketchybar-app-font" do
  version "2.0.71"
  sha256 "e015c40fbe95d85763b633eae54f7b8e1ded83cffbc15aff40b8b8f89717a0b1"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
