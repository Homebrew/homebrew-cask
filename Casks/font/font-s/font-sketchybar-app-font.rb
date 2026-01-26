cask "font-sketchybar-app-font" do
  version "2.0.51"
  sha256 "169e23892002219b24ca7e93eebbb6d53b40e2aefc3cb2eab562e390eab202af"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
