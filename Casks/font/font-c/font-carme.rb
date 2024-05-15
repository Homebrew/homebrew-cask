cask "font-carme" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/carme/Carme-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Carme"
  homepage "https://fonts.google.com/specimen/Carme"

  font "Carme-Regular.ttf"

  # No zap stanza required
end
