cask "font-sansita-swashed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sansitaswashed/SansitaSwashed%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Sansita Swashed"
  homepage "https://fonts.google.com/specimen/Sansita+Swashed"

  font "SansitaSwashed[wght].ttf"

  # No zap stanza required
end
