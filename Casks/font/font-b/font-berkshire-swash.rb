cask "font-berkshire-swash" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/berkshireswash/BerkshireSwash-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Berkshire Swash"
  homepage "https://fonts.google.com/specimen/Berkshire+Swash"

  font "BerkshireSwash-Regular.ttf"

  # No zap stanza required
end
