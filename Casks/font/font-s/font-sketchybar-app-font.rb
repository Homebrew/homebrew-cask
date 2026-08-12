cask "font-sketchybar-app-font" do
  version "2.0.74"
  sha256 "a23b01a289371163e4bad4218026ee2883aa61531957a387b4ef714ac44bb382"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
