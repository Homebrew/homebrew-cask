cask "surge" do
  version "5.5.0,2589,264b23ca76760b6f72c7e1b8b0068760"
  sha256 "beb37951b244bf13c23e3561e04168e5364d62b36600690d84ab86aa036d3a80"

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
    "~/Library/Application Support/com.nssurge.surge-mac",
    "~/Library/Application Support/Surge",
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
