cask "rockboxutility" do
  version "1.5.1"
  sha256 "2928f9563f5dc42dc95e31c70176ff28374f7e34c0b5a1d29903ff9e6c62efcf"

  url "https://download.rockbox.org/rbutil/macosx/RockboxUtility-v#{version}.dmg"
  name "Rockbox Utility"
  desc "Automated installer for the Rockbox digital music player firmware"
  homepage "https://www.rockbox.org/wiki/RockboxUtility"

  livecheck do
    url :homepage
    regex(/RockboxUtility[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "RockboxUtility.app"

  zap trash: [
    "~/.config/rockbox.org",
    "~/Library/Preferences/org.rockbox.rbutil.plist",
    "~/Library/Saved Application State/org.rockbox.rbutil.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
