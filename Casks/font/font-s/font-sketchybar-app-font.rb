cask "font-sketchybar-app-font" do
  version "3.0.4"
  sha256 "39f3cae94f17575d2b49eb854e4cd4cf30af680c2fc53aaa2546ef500c021d98"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
