cask "font-edu-au-vic-wa-nt-hand" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eduauvicwanthand/EduAUVICWANTHand%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu AU VIC WA NT Hand"
  homepage "https://fonts.google.com/specimen/Edu+AU+VIC+WA+NT+Hand"

  font "EduAUVICWANTHand[wght].ttf"

  # No zap stanza required
end
