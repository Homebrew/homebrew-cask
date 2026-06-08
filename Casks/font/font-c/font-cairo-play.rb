cask "font-cairo-play" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cairoplay/CairoPlay%5Bslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Cairo Play"
  homepage "https://fonts.google.com/specimen/Cairo+Play"

  font "CairoPlay[slnt,wght].ttf"

  # No zap stanza required
end
