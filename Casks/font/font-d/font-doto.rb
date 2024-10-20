cask "font-doto" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/doto/Doto%5BROND%2Cwght%5D.ttf"
  name "Doto"
  homepage "https://github.com/oliverlalan/Doto"

  font "Doto[ROND,wght].ttf"

  # No zap stanza required
end
