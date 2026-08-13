cask "font-sketchybar-app-font" do
  version "2.0.75"
  sha256 "68615bd5ff2c0fec65adf0581f0673a43dd457c36f329dc354d08620dcf85904"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
