cask "jumpshare" do
  version "3.2.7,148"
  sha256 "ddf247efeb95d6b203f70c8580e8acd22474f405513c668447be49a1fab9ae42"

  url "https://d21hi1or3tbtjm.cloudfront.net/desktop/mac/updates/Jumpshare-#{version.csv.first}.tar.bz2",
      verified: "d21hi1or3tbtjm.cloudfront.net/"
  name "Jumpshare"
  desc "File sharing, screen recording, and screenshot capture app"
  homepage "https://jumpshare.com/"

  livecheck do
    url "https://apps.jumpshare.com/desktop/mac/updates/appcast.xml"
    strategy :sparkle
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
