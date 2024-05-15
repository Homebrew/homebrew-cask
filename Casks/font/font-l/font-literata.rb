cask "font-literata" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/literata"
  name "Literata"
  homepage "https://fonts.google.com/specimen/Literata"

  font "Literata-Italic[opsz,wght].ttf"
  font "Literata[opsz,wght].ttf"

  # No zap stanza required
end
