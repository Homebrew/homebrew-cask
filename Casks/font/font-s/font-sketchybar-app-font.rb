cask "font-sketchybar-app-font" do
  version "2.0.73"
  sha256 "c5ae0d28da19cdbcfcf2a20cb92e79642aca8f98eb7456c665cc1f262574ec19"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
