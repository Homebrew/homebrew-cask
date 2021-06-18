cask "surge" do
  version "4.1.0-1298-f07b1b8713b2397518f4b252b5786452"
  sha256 "63b2f399d7a99484ff630eddb414065a5d5ea9fcbeb553784dfa37a1db9ac36c"

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
