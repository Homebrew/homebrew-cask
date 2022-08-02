cask "flrig" do
  version "1.4.7"

  if MacOS.version <= :catalina
    sha256 "f589e2c9df666a16b102e4786f48c71ba5ba1b91e23fa22e588811e944f182c9"
    url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_HS.dmg"
  else
    sha256 "e83e95e004778b66ea9079d608cda009c1996a0ac975a4258fcd68ae0d23479b"
    url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_BS.dmg"
  end

  name "flrig"
  desc "Ham radio rig control"
  homepage "https://sourceforge.net/projects/fldigi/files/flrig/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
    strategy :page_match
    regex(/flrig[._-]v?(\d+(?:\.\d+)+)\w*\.dmg/i)
  end

  app "flrig.app"

  preflight do
    staged_path.glob("flrig-*.app").first.rename(staged_path/"flrig.app")
  end

  zap trash: "~/.flrig"
end
