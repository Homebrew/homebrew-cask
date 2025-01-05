cask "font-aboriginal-serif" do
  version "9.606"
  sha256 :no_check

  url "https://www.languagegeek.com/font/AboriginalSerif.zip"
  name "Aboriginal Serif"
  homepage "https://www.languagegeek.com/font/fontdownload.html"

  livecheck do
    url :homepage
    regex(/Aboriginal\s+Serif.*?\(\s*v?(\d+(?:\.\d+)*)[^)]*\)/i)
  end

  font "AboriginalSerifREGULAR.ttf"
  font "AboriginalSerifBOLD.ttf"
  font "AboriginalSerifBOLDITALIC.ttf"
  font "AboriginalSerifITALIC.ttf"

  # No zap stanza required
end
