cask "flrig" do
  version "2.0.08"
  sha256 "2eaff6ae5b51b66d68f678be7999da8051c1c64bafdd8c033eb555458da45c48"

  url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}.dmg",
      verified: "sourceforge.net/fldigi/"
  name "flrig"
  desc "Ham radio rig control"
  homepage "https://www.w1hkj.org/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
    regex(%r{url=.*?/flrig[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "flrig-#{version}.app"

  zap trash: "~/.flrig"
end
