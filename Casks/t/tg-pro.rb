cask "tg-pro" do
  version "2.94"
  sha256 "765ad234eadeeeb864aea2078059976ad3579388aeac4f97eb2debb3464e6f28"

  url "https://www.tunabellysoftware.com/resources/TG%20Pro%20#{version}.dmg"
  name "TG Pro"
  desc "Temperature monitoring, fan control and diagnostics"
  homepage "https://www.tunabellysoftware.com/tgpro/"

  livecheck do
    url "https://www.tunabellysoftware.com/resources/sparkle/tgpro.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "TG Pro.app"

  zap trash: [
    "/Library/LaunchDaemons/com.tunabellysoftware.TGFanHelper.plist",
    "/Library/PrivilegedHelperTools/com.tunabellysoftware.TGFanHelper",
    "~/Library/Application Support/TG Pro",
    "~/Library/Caches/com.tunabellysoftware.tgpro",
    "~/Library/Cookies/com.tunabellysoftware.tgpro.binarycookies",
    "~/Library/Preferences/com.tunabellysoftware.tgpro.plist",
  ]
end
