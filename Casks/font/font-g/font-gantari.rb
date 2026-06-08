cask "font-gantari" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gantari"
  name "Gantari"
  homepage "https://fonts.google.com/specimen/Gantari"

  font "Gantari-Italic[wght].ttf"
  font "Gantari[wght].ttf"

  # No zap stanza required
end
