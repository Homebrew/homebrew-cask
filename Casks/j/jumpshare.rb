cask "jumpshare" do
  version "3.5.4"
  sha256 "9fb5e5b180116ce6f00f048902b0c1cce5c67aa9dad11bb5bfc543f678bf47b2"

  url "https://d21hi1or3tbtjm.cloudfront.net/desktop/mac/updates/Jumpshare-#{version}.tar.bz2"
  name "Jumpshare"
  desc "File sharing, screen recording, and screenshot capture app"
  homepage "https://jumpshare.com/"

  livecheck do
    url "https://d21hi1or3tbtjm.cloudfront.net/desktop/mac/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "Jumpshare.app"

  uninstall launchctl: "com.jumpshare.JumpshareLoginHelper",
            quit:      "com.jumpshare.Jumpshare"

  zap trash: [
    "~/Library/Application Scripts/697K87ALT7.com.jumpshare.Jumpshare",
    "~/Library/Application Scripts/com.jumpshare.JumpshareLoginHelper",
    "~/Library/Application Support/com.jumpshare.Jumpshare",
    "~/Library/Containers/com.jumpshare.JumpshareLoginHelper",
    "~/Library/Cookies/com.jumpshare.Jumpshare.binarycookies",
    "~/Library/Group Containers/697K87ALT7.com.jumpshare.Jumpshare",
    "~/Library/Preferences/com.jumpshare.Jumpshare.plist",
  ]
end
