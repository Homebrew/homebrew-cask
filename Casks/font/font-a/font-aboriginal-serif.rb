cask "font-aboriginal-serif" do
  version :latest
  sha256 :no_check

  url "https://www.languagegeek.com/font/AboriginalSerif.zip"
  name "Aboriginal Serif"
  homepage "https://www.languagegeek.com/font/fontdownload.html"

  font "AboriginalSerifREGULAR.ttf"
  font "AboriginalSerifBOLD.ttf"
  font "AboriginalSerifBOLDITALIC.ttf"
  font "AboriginalSerifITALIC.ttf"

  # No zap stanza required
end
