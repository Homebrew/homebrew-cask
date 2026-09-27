cask "font-sketchybar-app-font" do
  version "3.0.3"
  sha256 "f3aa1904fb44886829cc8dfd2356199fe649ed058b11a15f697de35ac6f4d2ef"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
