cask "font-armata" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/armata/Armata-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Armata"
  homepage "https://fonts.google.com/specimen/Armata"

  font "Armata-Regular.ttf"

  # No zap stanza required
end
