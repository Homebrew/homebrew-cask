cask "font-edu-vic-wa-nt-beginner" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eduvicwantbeginner/EduVICWANTBeginner%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu VIC WA NT Beginner"
  homepage "https://fonts.google.com/specimen/Edu+VIC+WA+NT+Beginner"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Edu VIC WA NT Beginner",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EduVICWANTBeginner[wght].ttf"

  # No zap stanza required
end
