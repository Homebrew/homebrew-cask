cask "font-momo-signature" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/momosignature/MomoSignature-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Momo Signature"
  homepage "https://fonts.google.com/specimen/Momo+Signature"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Momo Signature",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MomoSignature-Regular.ttf"

  # No zap stanza required
end
