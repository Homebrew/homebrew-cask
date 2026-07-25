cask "font-salsa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/salsa/Salsa-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Salsa"
  homepage "https://fonts.google.com/specimen/Salsa"

  font "Salsa-Regular.ttf"

  # No zap stanza required
end
