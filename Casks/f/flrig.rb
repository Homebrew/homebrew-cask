cask "flrig" do
  version "2.0.09"
  sha256 "1af38188ecd5d2bfeba92a98af83833a8e526563971b3dc45f0d60d495f0894f"

  url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}.dmg",
      verified: "sourceforge.net/fldigi/"
  name "flrig"
  desc "Ham radio rig control"
  homepage "https://www.w1hkj.org/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
    regex(%r{url=.*?/flrig[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
  end

  app "flrig-#{version}.app"

  zap trash: "~/.flrig"
end
