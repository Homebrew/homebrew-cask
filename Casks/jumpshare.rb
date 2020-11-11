cask "jumpshare" do
  version "2.6.7"
  sha256 "2becfaee2b40b234c8e73a0782e53969f5786ac802d5cb297e6f29754d9077be"

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
