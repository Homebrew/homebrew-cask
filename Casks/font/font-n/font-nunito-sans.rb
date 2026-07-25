cask "font-nunito-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/nunitosans"
  name "Nunito Sans"
  homepage "https://fonts.google.com/specimen/Nunito+Sans"

  font "NunitoSans-Italic[YTLC,opsz,wdth,wght].ttf"
  font "NunitoSans[YTLC,opsz,wdth,wght].ttf"

  # No zap stanza required
end
