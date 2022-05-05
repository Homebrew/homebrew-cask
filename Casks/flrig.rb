cask "flrig" do
  version "1.4.5"

  if MacOS.version <= :catalina
    sha256 "ede5c990548312c62b758a6e517f410112d14d899fec09fba2630f83d17c3e6f"
    url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_HS.dmg"
  else
    sha256 "ec6831998bc98b73e3f6ec3faa613997b76d91a007b45ed8217f7c5cb42e9ff2"
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
