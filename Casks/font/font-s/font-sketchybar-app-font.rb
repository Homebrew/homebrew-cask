cask "font-sketchybar-app-font" do
  version "2.0.88"
  sha256 "86f10a8b9a55e864a0cdcc06ca77fc342aed3eeb2d8f21073a73d82d543c2c1f"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
