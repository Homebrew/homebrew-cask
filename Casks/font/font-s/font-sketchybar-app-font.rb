cask "font-sketchybar-app-font" do
  version "2.0.77"
  sha256 "8a6f0de77900bcc3dfb16bb247ca01811094220ccb71dc0bbe134f54418b282b"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
