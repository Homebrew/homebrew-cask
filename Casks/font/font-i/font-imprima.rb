cask "font-imprima" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/imprima/Imprima-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Imprima"
  homepage "https://fonts.google.com/specimen/Imprima"

  font "Imprima-Regular.ttf"

  # No zap stanza required
end
