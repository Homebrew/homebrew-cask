cask "font-antic-didone" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anticdidone/AnticDidone-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Antic Didone"
  homepage "https://fonts.google.com/specimen/Antic+Didone"

  font "AnticDidone-Regular.ttf"

  # No zap stanza required
end
