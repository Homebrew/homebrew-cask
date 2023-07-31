cask "surge" do
  version "5.2.3,2354,ce8606235be8df196c0e9619a9c8cbbd"
  sha256 "3953de95572218d6b2ca2dad696b37f63d692d30105ae1810f179ba24b70a898"

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
  conflicts_with cask: "homebrew/cask-versions/surge4"
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
