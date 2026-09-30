cask "font-sketchybar-app-font" do
  version "3.0.5"
  sha256 "4abab88e1886f698be435086ce0cd30fa5232111c54079d7d2447c67ca11aecb"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
