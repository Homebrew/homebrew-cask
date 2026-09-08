cask "font-akshar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/akshar/Akshar%5BCTRS%2Cwght%5D.ttf"
  name "Akshar"
  homepage "https://fonts.google.com/specimen/Akshar"

  font "Akshar[CTRS,wght].ttf"

  # No zap stanza required
end
