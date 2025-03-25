cask "tg-pro" do
  version "2.97"
  sha256 "346e81bce54a4beac7e558320f6b3e71dc4e8532b62bc3ba53c7e3bf56c3924c"

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
