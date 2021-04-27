cask "melonds" do
  version "0.9.2"
  sha256 "80cc5c8b71eda3fdc1172809f6e957adc20899951facdd7cf1704317d5df6b86"

  url "http://melonds.kuribo64.net/downloads/melonDS_#{version}_mac64.dmg"
  name "melonDS"
  desc "Nintendo DS and DSi emulator"
  homepage "http://melonds.kuribo64.net/"

  depends_on formula: "qt@5"
  depends_on formula: "sdl2"
  depends_on formula: "libslirp"

  app "melonDS.app"

  zap trash: "~/Library/Preferences/melonDS/melonDS.ini"
end
