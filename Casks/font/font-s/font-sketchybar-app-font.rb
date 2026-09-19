cask "font-sketchybar-app-font" do
  version "2.0.89"
  sha256 "d7f111a888147133830884acc46394e1665e91a7b251e64e9511bc974831d99c"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
