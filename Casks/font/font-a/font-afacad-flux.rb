cask "font-afacad-flux" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/afacadflux/AfacadFlux%5Bslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Afacad Flux"
  homepage "https://fonts.google.com/specimen/Afacad+Flux"

  font "AfacadFlux[slnt,wght].ttf"

  # No zap stanza required
end
