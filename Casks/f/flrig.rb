cask "flrig" do
  version "2.0.10"
  sha256 "49f325db62c889dcabe537d2fcde9d6eb9325b7e69decd1a83f51ec39f8b0514"

  url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}.dmg",
      verified: "sourceforge.net/fldigi/"
  name "flrig"
  desc "Ham radio rig control"
  homepage "https://www.w1hkj.org/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
    regex(%r{url=.*?/flrig[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "flrig-#{version}.app"

  zap trash: "~/.flrig"
end
