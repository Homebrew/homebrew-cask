cask "font-sketchybar-app-font" do
  version "2.0.42"
  sha256 "62961c624df4c8c55ef01dbcb3c5a13846ceb41e4f42a44f7bdb6bbada0615eb"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
