cask "font-sketchybar-app-font" do
  version "2.0.37"
  sha256 "c7d83a179e20075ab1d63d58c45cb40a122e69b06dbdfa673261d8e64113f66c"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
