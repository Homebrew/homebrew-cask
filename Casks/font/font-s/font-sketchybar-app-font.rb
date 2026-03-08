cask "font-sketchybar-app-font" do
  version "2.0.55"
  sha256 "95cd37c3a5e142a96e48c3576b41905318bad7c5608ac1ef47f8f14bc6b62aff"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
