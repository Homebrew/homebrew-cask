cask "font-momo-trust-sans" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/momotrustsans/MomoTrustSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Momo Trust Sans"
  homepage "https://fonts.google.com/specimen/Momo+Trust+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Momo Trust Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MomoTrustSans[wght].ttf"

  # No zap stanza required
end
