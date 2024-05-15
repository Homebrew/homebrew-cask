cask "font-aboriginal-sans" do
  version :latest
  sha256 :no_check

  url "https://www.languagegeek.com/font/AboriginalSans.zip"
  name "LanguageGeek Aboriginal Sans Serif"
  homepage "https://www.languagegeek.com/font/fontdownload.html"

  font "AboriginalSansREGULAR.ttf"
  font "AboriginalSansBOLD.ttf"
  font "AboriginalSansBOLDITALIC.ttf"
  font "AboriginalSansITALIC.ttf"

  # No zap stanza required
end
