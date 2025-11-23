cask "font-momo-trust-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/momotrustsans/MomoTrustSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Momo Trust Sans"
  homepage "https://fonts.google.com/specimen/Momo+Trust+Sans"

  font "MomoTrustSans[wght].ttf"

  # No zap stanza required
end
