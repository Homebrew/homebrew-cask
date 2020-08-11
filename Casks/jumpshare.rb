cask "jumpshare" do
  version "2.6.4"
  sha256 "e12adcd32da3cb9443728c6a3718376e69c57a36e8bd575ed13be14df0631b08"

  url "https://apps.jumpshare.com/desktop/mac/updates/Jumpshare-#{version}.tar.bz2"
  appcast "https://apps.jumpshare.com/desktop/mac/updates/appcast.xml"
  name "Jumpshare"
  desc "File sharing, screen recording, and screenshot capture app"
  homepage "https://jumpshare.com/"

  depends_on macos: ">= :high_sierra"

  app "Jumpshare.app"

  zap trash: [
    "~/Library/Application Scripts/com.jumpshare.JumpshareLoginHelper",
    "~/Library/Application Support/com.jumpshare.Jumpshare",
    "~/Library/Containers/com.jumpshare.JumpshareLoginHelper",
    "~/Library/Cookies/com.jumpshare.Jumpshare.binarycookies",
    "~/Library/Preferences/com.jumpshare.Jumpshare.plist",
  ]
end
