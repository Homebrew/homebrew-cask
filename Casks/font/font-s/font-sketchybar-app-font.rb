cask "font-sketchybar-app-font" do
  version "2.0.68"
  sha256 "d9ecfc9f4d0b74bf1df5591a4eb49165907595b0f9186b8c3fc94840423fad73"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
