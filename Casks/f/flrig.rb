cask "flrig" do
  version "2.0.07"
  sha256 "e052f3931c5daf88e839b8d89df908be125f652c09e040a49c1124e3b5330230"

  url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}.dmg",
      verified: "sourceforge.net/fldigi/"
  name "flrig"
  desc "Ham radio rig control"
  homepage "https://www.w1hkj.org/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
    regex(%r{url=.*?/flrig[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :high_sierra"

  app "flrig-#{version}.app"

  zap trash: "~/.flrig"
end
