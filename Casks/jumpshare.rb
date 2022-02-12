cask "jumpshare" do
  version "3.1.3,121"
  sha256 "c896583d0afe5c270345916b4ec19edad8072734c5b34bfd88ea59a52c58affc"

  url "https://d21hi1or3tbtjm.cloudfront.net/desktop/mac/updates/Jumpshare-#{version.csv.first}.tar.bz2",
      verified: "d21hi1or3tbtjm.cloudfront.net/"
  name "Jumpshare"
  desc "File sharing, screen recording, and screenshot capture app"
  homepage "https://jumpshare.com/"

  livecheck do
    url "https://apps.jumpshare.com/desktop/mac/updates/appcast.xml"
    strategy :sparkle
  end

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
