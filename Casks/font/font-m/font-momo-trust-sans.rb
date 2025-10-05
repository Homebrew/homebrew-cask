cask "font-momo-trust-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/momotrustsans/MomoTrustSans%5Bwght%5D.ttf"
  name "Momo Trust Sans"
  homepage "https://github.com/typeassociates/MomoTrustSans"

  font "MomoTrustSans[wght].ttf"

  # No zap stanza required
end
