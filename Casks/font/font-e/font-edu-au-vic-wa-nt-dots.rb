cask "font-edu-au-vic-wa-nt-dots" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eduauvicwantdots/EduAUVICWANTDots%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu AU VIC WA NT Dots"
  homepage "https://fonts.google.com/specimen/Edu+AU+VIC+WA+NT+Dots"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Edu AU VIC WA NT Dots",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EduAUVICWANTDots[wght].ttf"

  # No zap stanza required
end
