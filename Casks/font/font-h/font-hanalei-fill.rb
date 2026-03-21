cask "font-hanalei-fill" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hanaleifill/HanaleiFill-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hanalei Fill"
  homepage "https://fonts.google.com/specimen/Hanalei+Fill"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hanalei Fill",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HanaleiFill-Regular.ttf"

  # No zap stanza required
end
