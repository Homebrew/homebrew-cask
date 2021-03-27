cask "melonds" do
  version "0.9.1"
  sha256 "5928ad133661b6ea428264894160b87cc48cdfc79461fb220c72d984613d6a62"

  url "http://melonds.kuribo64.net/downloads/melonDS_#{version}_mac64.tar.gz"
  name "melonDS"
  desc "Nintendo DS and DSi emulator"
  homepage "http://melonds.kuribo64.net/"

  depends_on formula: "qt@5"
  depends_on formula: "sdl2"
  depends_on formula: "libslirp"

  app "melonDS.app"

  zap trash: "~/Library/Preferences/melonDS/melonDS.ini"
end
