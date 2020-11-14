cask "surge" do
  version "4.0.0-1190"
  sha256 "f518ad9d88462a2030d5d89bafa8f5b410b592ef4a7d2438563b3f227bcf8ebf"

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}-2f8068ae17d95d414ed7405fc24aa2f1.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast-signed.xml"
  name "Surge"
  homepage "https://nssurge.com/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Surge.app"

  uninstall launchctl: "com.nssurge.surge-mac.helper",
            delete:    "/Library/PrivilegedHelperTools/com.nssurge.surge-mac.helper"

  zap delete: [
    "~/Library/Application Support/com.nssurge.surge-mac",
    "~/Library/Caches/com.nssurge.surge-mac",
    "~/Library/Caches/com.nssurge.surge-mac.plist",
    "~/Library/Logs/Surge",
    "~/Library/Preferences/com.nssurge.surge-mac.plist",
  ]
end
