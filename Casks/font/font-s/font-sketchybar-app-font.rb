cask "font-sketchybar-app-font" do
  version "2.0.62"
  sha256 "1ddb661aac18eb9a44ba6f02bc530d09e7db664553032d35adbf6e8170d2e49e"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
