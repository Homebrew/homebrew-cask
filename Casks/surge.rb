cask "surge" do
  version "3.5.8-1157"
  sha256 "eaa7b08b74ad42b0e125a80a0b49fef9bd671a4d523dc21d2a2d7674ce909da8"

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
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
