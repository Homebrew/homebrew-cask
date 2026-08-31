cask "flrig" do
  version "2.0.12"
  sha256 "0ec96340ffb656058aefadfc54a39bcf0a2712a1768000b9db85175b9a811ff2"

  url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}.dmg"
  name "flrig"
  desc "Ham radio rig control"
  homepage "https://www.w1hkj.org/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
    regex(%r{url=.*?/flrig[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
  end

  depends_on macos: :big_sur

  app "flrig-#{version}.app"

  zap trash: "~/.flrig"
end
