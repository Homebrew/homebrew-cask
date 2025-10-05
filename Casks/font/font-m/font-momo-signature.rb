cask "font-momo-signature" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/momosignature/MomoSignature-Regular.ttf"
  name "Momo Signature"
  homepage "https://github.com/typeassociates/MomoSignature"

  font "MomoSignature-Regular.ttf"

  # No zap stanza required
end
