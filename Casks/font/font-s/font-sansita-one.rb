cask "font-sansita-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sansitaone/SansitaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sansita One"
  homepage "https://fonts.google.com/specimen/Sansita+One"

  font "SansitaOne-Regular.ttf"

  # No zap stanza required
end
