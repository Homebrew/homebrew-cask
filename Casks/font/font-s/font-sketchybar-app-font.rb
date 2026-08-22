cask "font-sketchybar-app-font" do
  version "2.0.82"
  sha256 "b60e87735dc4330d8bba3bc4b377950ae85226d5d52aed6a528070251f0b26fd"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
