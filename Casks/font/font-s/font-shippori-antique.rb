cask "font-shippori-antique" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shipporiantique/ShipporiAntique-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shippori Antique"
  homepage "https://fonts.google.com/specimen/Shippori+Antique"

  font "ShipporiAntique-Regular.ttf"

  # No zap stanza required
end
