cask "font-sketchybar-app-font" do
  version "2.0.34"
  sha256 "2eb0dcfd257eaf8872c27760fd7ef473c02fe290aea690ecbbfe2ce08ebc4160"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
