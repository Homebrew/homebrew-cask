cask "font-momo-trust-display" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/momotrustdisplay/MomoTrustDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Momo Trust Display"
  homepage "https://fonts.google.com/specimen/Momo+Trust+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Momo Trust Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MomoTrustDisplay-Regular.ttf"

  # No zap stanza required
end
