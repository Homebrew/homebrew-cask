cask "surge" do
  version "4.0.5-1262-db70f680cd0f15236c8415ec7b804c3a"
  sha256 "3773f0468cabb0dc58823a968fb438196b256bc459803053957c8fe45a7ee310"

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast-signed.xml"
  name "Surge"
  desc "Network toolbox"
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
