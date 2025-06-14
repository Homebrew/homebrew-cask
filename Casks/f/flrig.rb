cask "flrig" do
  version "2.0.06"
  sha256 "e7f1cc6e6e97ce1fe4818896eb67544678d18220fdac0111dc69e399e66efd12"

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
