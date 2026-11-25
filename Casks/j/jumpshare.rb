cask "jumpshare" do
  version "3.6.0,234"
  sha256 "c2805646d9e09f536b19f29401b301a91a84d704bf471e4b37d67c82805a8e87"

  url "https://apps.jumpshare.com/desktop/mac/#{version.tr(",", "-")}/updates/v2/Jumpshare-#{version.csv.first}.tar.bz2"
  name "Jumpshare"
  desc "File sharing, screen recording, and screenshot capture app"
  homepage "https://jumpshare.com/"

  livecheck do
    url "https://apps.jumpshare.com/desktop/mac/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Jumpshare.app"

  uninstall launchctl: "com.jumpshare.JumpshareLoginHelper",
            quit:      "com.jumpshare.Jumpshare"

  zap trash: [
    "~/Library/Application Scripts/697K87ALT7.com.jumpshare.Jumpshare",
    "~/Library/Application Scripts/com.jumpshare.JumpshareLoginHelper",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jumpshare.jumpshareloginhelper.sfl*",
    "~/Library/Application Support/com.jumpshare.Jumpshare",
    "~/Library/Containers/com.jumpshare.JumpshareLoginHelper",
    "~/Library/Cookies/com.jumpshare.Jumpshare.binarycookies",
    "~/Library/Group Containers/697K87ALT7.com.jumpshare.Jumpshare",
    "~/Library/Preferences/com.jumpshare.Jumpshare.plist",
  ]
end
