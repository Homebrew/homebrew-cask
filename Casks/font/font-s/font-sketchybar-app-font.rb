cask "font-sketchybar-app-font" do
  version "3.0.22"
  sha256 "e0ae78fd484def50f5a8b4cbbc1bb4d0854043e997b9050759fec2fcfd622dce"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  zap :not_required
end
