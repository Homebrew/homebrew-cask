cask "font-shippori-antique-b1" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shipporiantiqueb1/ShipporiAntiqueB1-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shippori Antique B1"
  homepage "https://fonts.google.com/specimen/Shippori+Antique+B1"

  font "ShipporiAntiqueB1-Regular.ttf"

  # No zap stanza required
end
