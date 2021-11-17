cask "surge" do
  version "4.2.3-1357-0803594c82248360a95722089650f7f7"
  sha256 "af4fa9222c62415772888d15e0dc6e9a980a686b50eb4ffec6220c2837b5d7dc"

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
