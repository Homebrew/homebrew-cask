cask "surge" do
  version "5.0.3,2199,c241935acf37b3ec7f7fa4f5120e8690"
  sha256 "29290a8b4c7369df9c2f64f9561e14844faf242ef64ba7b70a81ceba898979ed"

  url "https://dl.nssurge.com/mac/v#{version.major}/Surge-#{version.tr(",", "-")}.zip"
  name "Surge"
  desc "Network toolbox"
  homepage "https://nssurge.com/"

  livecheck do
    url "https://www.nssurge.com/mac/v#{version.major}/appcast-signed.xml"
    strategy :sparkle do |item|
      match = item.url.match(/[._-](\d+(?:\.\d+)+)[._-](\d+)[._-](\h+)\.zip/i)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Surge.app"

  uninstall launchctl: "com.nssurge.surge-mac.helper",
            delete:    "/Library/PrivilegedHelperTools/com.nssurge.surge-mac.helper"

  zap delete: [
    "~/Library/Application Support/Surge",
    "~/Library/Application Support/com.nssurge.surge-mac",
    "~/Library/Caches/com.nssurge.surge-mac",
    "~/Library/Caches/com.nssurge.surge-mac.plist",
    "~/Library/HTTPStorages/com.nssurge.surge-mac",
    "~/Library/Logs/Surge",
    "~/Library/Preferences/com.nssurge.surge-dashboard.plist",
    "~/Library/Preferences/com.nssurge.surge-mac.plist",
    "~/Library/Saved Application State/com.nssurge.surge-dashboard.savedState",
    "~/Library/Saved Application State/com.nssurge.surge-mac.savedState",
  ]
end
