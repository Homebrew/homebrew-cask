cask "melonds" do
  version "0.9.2"

  if Hardware::CPU.intel?
    sha256 "80cc5c8b71eda3fdc1172809f6e957adc20899951facdd7cf1704317d5df6b86"
    url "http://melonds.kuribo64.net/downloads/melonDS_#{version}_mac64.dmg"
  else
    sha256 "5dc4f493aaabaac91bf8fdd79c5de1c5014daa2cce64718c43f461c2640c82ab"
    url "http://melonds.kuribo64.net/downloads/melonDS_#{version}_macARM.dmg"
  end

  name "melonDS"
  desc "Nintendo DS and DSi emulator"
  homepage "http://melonds.kuribo64.net/"

  livecheck do
    url "https://github.com/Arisotura/melonDS"
    strategy :github_latest
  end

  depends_on formula: "libslirp"
  depends_on formula: "qt@5"
  depends_on formula: "sdl2"

  app "melonDS.app"

  zap trash: "~/Library/Preferences/melonDS/melonDS.ini"
end
