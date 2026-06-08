cask "font-brygada-1918" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/brygada1918"
  name "Brygada 1918"
  homepage "https://fonts.google.com/specimen/Brygada+1918"

  font "Brygada1918-Italic[wght].ttf"
  font "Brygada1918[wght].ttf"

  # No zap stanza required
end
