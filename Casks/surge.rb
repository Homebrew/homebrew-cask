cask "surge" do
  version "4.2.1-1333-14f7cb7cd943be7e4b3cecfb3fcd8ba3"
  sha256 "ca0b5aa66b4217152cdc8154966a725c90be54e6dfe22ccaac6cd920e2d7c090"

  url "https://dl.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  name "Surge"
  desc "Network toolbox"
  homepage "https://nssurge.com/"

  livecheck do
    url "https://www.nssurge.com/mac/v#{version.major}/appcast-signed.xml"
    strategy :sparkle do |item|
      item.url[/-(\d+(?:\.\d+)*-\d+-[0-9a-f]+)\.zip/i, 1]
    end
  end

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
