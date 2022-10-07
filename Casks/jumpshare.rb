cask "jumpshare" do
  version "3.2.4,138"
  sha256 "6770c83ca24f3e3d255b5b1762b6971d3a155a49e17be9599b6a2aab3952184b"

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
