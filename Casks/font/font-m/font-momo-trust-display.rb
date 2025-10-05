cask "font-momo-trust-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/momotrustdisplay/MomoTrustDisplay-Regular.ttf"
  name "Momo Trust Display"
  homepage "https://github.com/typeassociates/MomoTrustDisplay"

  font "MomoTrustDisplay-Regular.ttf"

  # No zap stanza required
end
