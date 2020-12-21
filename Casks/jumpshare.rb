cask "jumpshare" do
  version "2.6.8,92"
  sha256 "4816bfcbaac413fa9a4f4b07e5a60ecaf7453af0e49f0d746a001996dadc61de"

  url "https://apps.jumpshare.com/desktop/mac/updates/Jumpshare-#{version.before_comma}.tar.bz2"
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
