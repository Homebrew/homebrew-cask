cask "rockboxutility" do
  version "1.5.1"
  sha256 "b979b6aa7ab2894f32425114213d7f9efa803ee41523df6658739b3029058841"

  url "https://download.rockbox.org/rbutil/macosx/RockboxUtility-v#{version}.dmg"
  name "Rockbox Utility"
  desc "Automated installer for the Rockbox digital music player firmware"
  homepage "https://www.rockbox.org/wiki/RockboxUtility"

  livecheck do
    url :homepage
    regex(/RockboxUtility[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "RockboxUtility.app"

  zap trash: [
    "~/.config/rockbox.org",
    "~/Library/Preferences/org.rockbox.rbutil.plist",
    "~/Library/Saved Application State/org.rockbox.rbutil.savedState",
  ]
end
