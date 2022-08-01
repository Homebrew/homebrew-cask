cask "flrig" do
  version "1.4.6"

  if MacOS.version <= :catalina
    sha256 "f589e2c9df666a16b102e4786f48c71ba5ba1b91e23fa22e588811e944f182c9"
    url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_HS.dmg"
  else
    sha256 "db695231122941f1c5f155b2e2f2491b1e248fede025fb53675d369662b154df"
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
