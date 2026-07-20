cask "font-barrio" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/barrio/Barrio-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Barrio"
  homepage "https://fonts.google.com/specimen/Barrio"

  font "Barrio-Regular.ttf"

  # No zap stanza required
end
