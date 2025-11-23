cask "font-manuale" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/manuale"
  name "Manuale"
  homepage "https://fonts.google.com/specimen/Manuale"

  font "Manuale-Italic[wght].ttf"
  font "Manuale[wght].ttf"

  # No zap stanza required
end
