cask "font-aboriginal-sans" do
  version "9.602"
  sha256 :no_check

  url "https://www.languagegeek.com/font/AboriginalSans.zip"
  name "LanguageGeek Aboriginal Sans Serif"
  homepage "https://www.languagegeek.com/font/fontdownload.html"

  livecheck do
    url :homepage
    regex(/Aboriginal\s+Sans\s+Serif.*?\(\s*v?(\d+(?:\.\d+)*)[^)]*\)/i)
  end

  font "AboriginalSansREGULAR.ttf"
  font "AboriginalSansBOLD.ttf"
  font "AboriginalSansBOLDITALIC.ttf"
  font "AboriginalSansITALIC.ttf"

  # No zap stanza required
end
