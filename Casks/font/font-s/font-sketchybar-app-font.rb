cask "font-sketchybar-app-font" do
  version "2.0.87"
  sha256 "02c5fee3eec40c09f52afc2392401e77e41128cac17934054d71a8007f905bc6"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
