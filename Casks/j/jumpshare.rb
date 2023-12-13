cask "jumpshare" do
  version "3.2.16"
  sha256 "7dcf683ac63cbd57df8b0434813397c23bba05c0103842de9295175c8fe28ba0"

  url "https://d21hi1or3tbtjm.cloudfront.net/desktop/mac/updates/Jumpshare-#{version}.tar.bz2",
      verified: "d21hi1or3tbtjm.cloudfront.net/desktop/mac/updates/"
  name "Jumpshare"
  desc "File sharing, screen recording, and screenshot capture app"
  homepage "https://jumpshare.com/"

  livecheck do
    url "https://apps.jumpshare.com/desktop/mac/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "Jumpshare.app"

  zap trash: [
    "~/Library/Application Scripts/com.jumpshare.JumpshareLoginHelper",
    "~/Library/Application Support/com.jumpshare.Jumpshare",
    "~/Library/Containers/com.jumpshare.JumpshareLoginHelper",
    "~/Library/Cookies/com.jumpshare.Jumpshare.binarycookies",
    "~/Library/Preferences/com.jumpshare.Jumpshare.plist",
  ]
end
