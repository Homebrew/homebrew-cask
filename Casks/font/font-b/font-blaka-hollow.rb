cask "font-blaka-hollow" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/blakahollow/BlakaHollow-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Blaka Hollow"
  homepage "https://fonts.google.com/specimen/Blaka+Hollow"

  font "BlakaHollow-Regular.ttf"

  # No zap stanza required
end
