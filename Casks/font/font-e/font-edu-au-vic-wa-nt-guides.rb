cask "font-edu-au-vic-wa-nt-guides" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eduauvicwantguides/EduAUVICWANTGuides%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu AU VIC WA NT Guides"
  homepage "https://fonts.google.com/specimen/Edu+AU+VIC+WA+NT+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Edu AU VIC WA NT Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EduAUVICWANTGuides[wght].ttf"

  # No zap stanza required
end
