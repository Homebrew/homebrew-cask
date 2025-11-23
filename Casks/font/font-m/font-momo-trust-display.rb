cask "font-momo-trust-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/momotrustdisplay/MomoTrustDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Momo Trust Display"
  homepage "https://fonts.google.com/specimen/Momo+Trust+Display"

  font "MomoTrustDisplay-Regular.ttf"

  # No zap stanza required
end
