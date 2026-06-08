cask "font-zalando-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zalandosans"
  name "Zalando Sans"
  homepage "https://fonts.google.com/specimen/Zalando+Sans"

  font "ZalandoSans-Italic[wdth,wght].ttf"
  font "ZalandoSans[wdth,wght].ttf"

  # No zap stanza required
end
