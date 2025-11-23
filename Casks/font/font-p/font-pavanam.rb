cask "font-pavanam" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pavanam/Pavanam-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pavanam"
  homepage "https://fonts.google.com/specimen/Pavanam"

  font "Pavanam-Regular.ttf"

  # No zap stanza required
end
