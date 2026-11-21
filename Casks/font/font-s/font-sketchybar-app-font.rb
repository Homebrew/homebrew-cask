cask "font-sketchybar-app-font" do
  version "3.0.29"
  sha256 "f6cbd8502396124a78b0a0b66311ef87aaf209f6608726fcaf5fd4320c15f5e4"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
