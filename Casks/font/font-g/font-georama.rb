cask "font-georama" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/georama"
  name "Georama"
  homepage "https://fonts.google.com/specimen/Georama"

  font "Georama-Italic[wdth,wght].ttf"
  font "Georama[wdth,wght].ttf"

  # No zap stanza required
end
