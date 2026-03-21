cask "font-stix-two-math" do
  version "2.12"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stixtwomath/STIXTwoMath-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "STIX Two Math"
  homepage "https://fonts.google.com/specimen/STIX+Two+Math"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "STIX Two Math",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "STIXTwoMath-Regular.ttf"

  # No zap stanza required
end
