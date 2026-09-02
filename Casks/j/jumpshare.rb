cask "jumpshare" do
  version "3.5.2"
  sha256 "2f2cf7be6124cdeba2de200750d23b2648b456ecf40ea5e77c843dca1bf8949f"

  url "https://d21hi1or3tbtjm.cloudfront.net/desktop/mac/updates/Jumpshare-#{version}.tar.bz2"
  name "Jumpshare"
  desc "File sharing, screen recording, and screenshot capture app"
  homepage "https://jumpshare.com/"

  livecheck do
    url "https://d21hi1or3tbtjm.cloudfront.net/desktop/mac/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Jumpshare.app"

  uninstall launchctl: "com.jumpshare.JumpshareLoginHelper"

  zap trash: [
    "~/Library/Application Scripts/com.jumpshare.JumpshareLoginHelper",
    "~/Library/Application Support/com.jumpshare.Jumpshare",
    "~/Library/Containers/com.jumpshare.JumpshareLoginHelper",
    "~/Library/Cookies/com.jumpshare.Jumpshare.binarycookies",
    "~/Library/Preferences/com.jumpshare.Jumpshare.plist",
  ]
end
