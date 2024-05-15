cask "font-finlandica" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/finlandica"
  name "Finlandica"
  homepage "https://fonts.google.com/specimen/Finlandica"

  font "Finlandica-Italic[wght].ttf"
  font "Finlandica[wght].ttf"

  # No zap stanza required
end
