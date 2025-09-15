cask "surge" do
  version "6.3.0,8560,e2722a66aa0ecc9dd60c3e8707aae567"
  sha256 "1e60cbea388cec731f88061d202abac244546a6ce54a80bbe8aacd5c9879353e"

  url "https://dl.nssurge.com/mac/v#{version.major}/Surge-#{version.tr(",", "-")}.zip"
  name "Surge"
  desc "Network toolbox"
  homepage "https://nssurge.com/"

  livecheck do
    # The SPUFeedURL from Info.plist is https://nssurge.com/mac/latest/appcast-signed.xml
    url "https://nssurge.com/mac/latest/appcast-signed.xml"
    regex(/[._-](\d+(?:\.\d+)+)[._-](\d+)[._-](\h+)\.zip/i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true
  conflicts_with cask: "surge@4"
  depends_on macos: ">= :monterey" # Confirmed by LSMinimumSystemVersion "12.0"

  app "Surge.app"

  uninstall launchctl: "com.nssurge.surge-mac.helper",
            delete:    "/Library/PrivilegedHelperTools/com.nssurge.surge-mac.helper"

  zap delete: [
    "~/Library/Application Support/bugsnag-shared-com.nssurge.surge-mac",
    "~/Library/Application Support/com.bugsnag.Bugsnag/com.nssurge.surge-mac",
    "~/Library/Application Support/com.nssurge.surge-mac",
    "~/Library/Application Support/Surge",
    "~/Library/Caches/bugsnag-shared-com.nssurge.surge-mac",
    "~/Library/Caches/com.nssurge.surge-mac*",
    "~/Library/HTTPStorages/com.nssurge.surge-mac",
    "~/Library/HTTPStorages/com.nssurge.surge-mac.binarycookies",
    "~/Library/Logs/Surge",
    "~/Library/Preferences/com.nssurge.surge*",
    "~/Library/Saved Application State/com.nssurge.surge*",
  ]
end
