cask "flrig" do
  version "1.4.4"

  if MacOS.version <= :catalina
    sha256 "d6cdd639c59807e7bde531585e349789ca5ee20d9bb7262dbd8d9966e94d8805"
    url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_HS.dmg"
  else
    sha256 "d5fd8be8f39c998f4ee76a461f935d0da51582730df1b71e3e29240d41d53252"
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
