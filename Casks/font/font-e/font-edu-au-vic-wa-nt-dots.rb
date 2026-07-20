cask "font-edu-au-vic-wa-nt-dots" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eduauvicwantdots/EduAUVICWANTDots%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu AU VIC WA NT Dots"
  homepage "https://fonts.google.com/specimen/Edu+AU+VIC+WA+NT+Dots"

  font "EduAUVICWANTDots[wght].ttf"

  # No zap stanza required
end
