cask "font-sketchybar-app-font" do
  version "2.0.78"
  sha256 "ed6168a1817cfbb38be31f8111fb0b025f0850419451dabfdf11c23f9ac1b73b"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
