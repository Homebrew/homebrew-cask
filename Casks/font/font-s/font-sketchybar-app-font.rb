cask "font-sketchybar-app-font" do
  version "2.0.41"
  sha256 "4445134dbdd5228e7f7366b5018be6aa6d339d57d7ffce43a097e9d9b399811e"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
