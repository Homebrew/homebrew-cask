cask "font-alata" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alata/Alata-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alata"
  homepage "https://fonts.google.com/specimen/Alata"

  font "Alata-Regular.ttf"

  # No zap stanza required
end
