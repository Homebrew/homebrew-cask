cask "font-sketchybar-app-font" do
  version "2.0.31"
  sha256 "e727626cf975b8e2217de6ecadac469ad13b5011bf6c6546a25600ee351284b5"

  url "https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v#{version}/sketchybar-app-font.ttf"
  name "sketchybar-app-font"
  homepage "https://github.com/kvndrsslr/sketchybar-app-font"

  font "sketchybar-app-font.ttf"

  # No zap stanza required
end
