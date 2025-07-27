cask "font-zalando-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/zalandosans"
  name "Zalando Sans"
  homepage "https://github.com/zalando/sans"

  font "ZalandoSans-Italic[wdth,wght].ttf"
  font "ZalandoSans[wdth,wght].ttf"

  # No zap stanza required
end
