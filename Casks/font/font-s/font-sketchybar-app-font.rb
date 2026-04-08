cask "font-sketchybar-app-font" do
  version "2.0.57"
  sha256 "09e3f20571226fdf56b00fe447c8328db0cbc4718a8c5e387b5516ed854b088b"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
