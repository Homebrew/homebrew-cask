cask "font-edu-au-vic-wa-nt-hand" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eduauvicwanthand/EduAUVICWANTHand%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu AU VIC WA NT Hand"
  homepage "https://fonts.google.com/specimen/Edu+AU+VIC+WA+NT+Hand"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Edu AU VIC WA NT Hand",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EduAUVICWANTHand[wght].ttf"

  # No zap stanza required
end
