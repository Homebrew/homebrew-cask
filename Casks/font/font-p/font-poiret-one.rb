cask "font-poiret-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/poiretone/PoiretOne-Regular.ttf"
  name "Poiret One"
  homepage "https://fonts.google.com/specimen/Poiret+One"

  font "PoiretOne-Regular.ttf"

  # No zap stanza required
end
