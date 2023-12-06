cask "tigerjython" do
  version "2.38"
  sha256 :no_check

  url "https://www.tjgroup.ch/download/TigerJython.dmg"
  name "TigerJython"
  desc "Jython-based educational programming environment"
  homepage "https://www.tjgroup.ch/"

  livecheck do
    url "https://www.tjgroup.ch/index.php?site=download"
    regex(/version\s+(\d+(?:\.\d+)+)/i)
  end

  suite "TigerJython"

  zap trash: "~/Library/Caches/org.aplu.TigerJython-Mac"
end
