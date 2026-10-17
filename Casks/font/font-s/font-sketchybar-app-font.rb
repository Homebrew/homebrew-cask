cask "font-sketchybar-app-font" do
  version "3.0.9"
  sha256 "7f2886f8d40a4106a6104a9455dec95eb43169bc4ab14ee1436feaeade388814"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
