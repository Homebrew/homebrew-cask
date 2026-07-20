cask "font-piazzolla" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/piazzolla"
  name "Piazzolla"
  homepage "https://fonts.google.com/specimen/Piazzolla"

  font "Piazzolla-Italic[opsz,wght].ttf"
  font "Piazzolla[opsz,wght].ttf"

  # No zap stanza required
end
