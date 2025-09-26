cask "font-sketchybar-app-font" do
  version "2.0.44"
  sha256 "36ad9433d881ad26c9d06ba692d946397392bb25b20fca9e93f20e6436592d51"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
