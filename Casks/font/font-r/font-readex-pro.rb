cask "font-readex-pro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/readexpro/ReadexPro%5BHEXP%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Readex Pro"
  homepage "https://fonts.google.com/specimen/Readex+Pro"

  font "ReadexPro[HEXP,wght].ttf"

  # No zap stanza required
end
