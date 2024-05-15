cask "font-montserrat" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/montserrat"
  name "Montserrat"
  homepage "https://fonts.google.com/specimen/Montserrat"

  font "Montserrat-Italic[wght].ttf"
  font "Montserrat[wght].ttf"

  # No zap stanza required
end
