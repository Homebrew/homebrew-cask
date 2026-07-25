cask "font-edu-au-vic-wa-nt-pre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eduauvicwantpre/EduAUVICWANTPre%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Edu AU VIC WA NT Pre"
  homepage "https://fonts.google.com/specimen/Edu+AU+VIC+WA+NT+Pre"

  font "EduAUVICWANTPre[wght].ttf"

  # No zap stanza required
end
