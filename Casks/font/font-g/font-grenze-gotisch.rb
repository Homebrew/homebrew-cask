cask "font-grenze-gotisch" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/grenzegotisch/GrenzeGotisch%5Bwght%5D.ttf"
  name "Grenze Gotisch"
  homepage "https://fonts.google.com/specimen/Grenze+Gotisch"

  font "GrenzeGotisch[wght].ttf"

  # No zap stanza required
end
