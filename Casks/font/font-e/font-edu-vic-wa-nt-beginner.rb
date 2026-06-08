cask "font-edu-vic-wa-nt-beginner" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eduvicwantbeginner/EduVICWANTBeginner%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu VIC WA NT Beginner"
  homepage "https://fonts.google.com/specimen/Edu+VIC+WA+NT+Beginner"

  font "EduVICWANTBeginner[wght].ttf"

  # No zap stanza required
end
