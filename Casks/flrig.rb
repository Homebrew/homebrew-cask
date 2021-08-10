cask "flrig" do
  version "1.4.2"

  if MacOS.version <= :catalina
    sha256 "339fa8271bbff84c904e15c0b220ddf44323312a718624cfce807ed6b3da6edb"

    url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_hs.dmg"
  else
    sha256 "ac2fd1db8b19aa091573a3b56112227478ef8c47217e3354cf9d54aeac898634"

    url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_bs.dmg"
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
