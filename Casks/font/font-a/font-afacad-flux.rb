cask "font-afacad-flux" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/afacadflux/AfacadFlux%5Bslnt%2Cwght%5D.ttf"
  name "Afacad Flux"
  homepage "https://github.com/Dicotype/Afacad"

  font "AfacadFlux[slnt,wght].ttf"

  # No zap stanza required
end
