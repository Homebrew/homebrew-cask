cask "font-gasoek-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gasoekone/GasoekOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gasoek One"
  homepage "https://fonts.google.com/specimen/Gasoek+One"

  font "GasoekOne-Regular.ttf"

  # No zap stanza required
end
