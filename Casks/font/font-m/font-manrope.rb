cask "font-manrope" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/manrope/Manrope%5Bwght%5D.ttf"
  name "Manrope"
  homepage "https://fonts.google.com/specimen/Manrope"

  font "Manrope[wght].ttf"

  # No zap stanza required
end
