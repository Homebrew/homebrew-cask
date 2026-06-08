cask "font-edu-au-vic-wa-nt-arrows" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eduauvicwantarrows/EduAUVICWANTArrows%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu AU VIC WA NT Arrows"
  homepage "https://fonts.google.com/specimen/Edu+AU+VIC+WA+NT+Arrows"

  font "EduAUVICWANTArrows[wght].ttf"

  # No zap stanza required
end
