cask "font-gelasio" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gelasio"
  name "Gelasio"
  homepage "https://fonts.google.com/specimen/Gelasio"

  font "Gelasio-Italic[wght].ttf"
  font "Gelasio[wght].ttf"

  # No zap stanza required
end
