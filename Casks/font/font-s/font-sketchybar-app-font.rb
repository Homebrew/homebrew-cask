cask "font-sketchybar-app-font" do
  version "2.0.86"
  sha256 "1a47a07c1c87fee69f5d1006fa4c1b5a08311d987de7eedf045f8575b7a8df4a"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
