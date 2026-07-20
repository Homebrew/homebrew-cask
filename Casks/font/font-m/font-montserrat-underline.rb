cask "font-montserrat-underline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/montserratunderline"
  name "Montserrat Underline"
  homepage "https://fonts.google.com/specimen/Montserrat+Underline"

  font "MontserratUnderline-Italic[wght].ttf"
  font "MontserratUnderline[wght].ttf"

  # No zap stanza required
end
