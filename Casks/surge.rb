cask "surge" do
  version "4.2.4,1399,4f3c53abfe45fce5646d84af11e589c4"
  sha256 "c19ceb77c5a52afc5b1f3616bf3076e93a74931183457fc628b1210578df04ac"

  url "https://dl.nssurge.com/mac/v#{version.major}/Surge-#{version.tr(",", "-")}.zip"
  name "Surge"
  desc "Network toolbox"
  homepage "https://nssurge.com/"

  livecheck do
    url "https://www.nssurge.com/mac/v#{version.major}/appcast-signed.xml"
    strategy :sparkle do |item|
      regex = /[._-](\d+(?:\.\d+)+)[._-](\d+)[._-](\h+)\.zip/i
      item.url.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
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
