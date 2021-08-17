cask "surge" do
  version "4.2.0-1321-d4d84696bb58cf8be0189b59ccbe926b"
  sha256 "b730a78dfd2cfbe393143b146530b559cfeb437f29768692b9c40e9d4b823940"

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
