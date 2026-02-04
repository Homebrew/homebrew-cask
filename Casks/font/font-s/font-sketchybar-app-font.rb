cask "font-sketchybar-app-font" do
  version "2.0.53"
  sha256 "01c56863f11ffc31b22c09c0751e2d9f558b987a86e44c7b32389530824aeb88"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
