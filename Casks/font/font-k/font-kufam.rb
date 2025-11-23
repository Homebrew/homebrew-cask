cask "font-kufam" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kufam"
  name "Kufam"
  homepage "https://fonts.google.com/specimen/Kufam"

  font "Kufam-Italic[wght].ttf"
  font "Kufam[wght].ttf"

  # No zap stanza required
end
