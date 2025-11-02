cask "font-momo-signature" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/momosignature/MomoSignature-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Momo Signature"
  homepage "https://fonts.google.com/specimen/Momo+Signature"

  font "MomoSignature-Regular.ttf"

  # No zap stanza required
end
