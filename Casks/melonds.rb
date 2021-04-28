cask "melonds" do
  version "0.9.2"

  if Hardware::CPU.intel?
    sha256 "253c3ce58c626d05c62444a347ccc6b3bd6e7698f685ffd404c9a51ac5c08a91"
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
