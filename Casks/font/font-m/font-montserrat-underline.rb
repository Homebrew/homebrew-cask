cask "font-montserrat-underline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/montserratunderline"
  name "Montserrat Underline"
  homepage "https://github.com/JulietaUla/Montserrat"

  font "MontserratUnderline-Italic[wght].ttf"
  font "MontserratUnderline[wght].ttf"

  # No zap stanza required
end
