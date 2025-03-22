cask "surge" do
  version "5.10.2,3235,9255a55c4af59cbf0ed01b245ef86dcc"
  sha256 "766fc03cb247037d21762714ece84b69ca80f6b68fb106e7713a8b7efb3ac31d"

  url "https://dl.nssurge.com/mac/v#{version.major}/Surge-#{version.tr(",", "-")}.zip"
  name "Surge"
  desc "Network toolbox"
  homepage "https://nssurge.com/"

  livecheck do
    url "https://www.nssurge.com/mac/v#{version.major}/appcast-signed.xml"
    regex(/[._-](\d+(?:\.\d+)+)[._-](\d+)[._-](\h+)\.zip/i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  auto_updates true
  conflicts_with cask: "surge@4"
  depends_on macos: ">= :monterey"

  app "Surge.app"

  uninstall launchctl: "com.nssurge.surge-mac.helper",
            delete:    "/Library/PrivilegedHelperTools/com.nssurge.surge-mac.helper"

  zap delete: [
    "~/Library/Application Support/com.nssurge.surge-mac",
    "~/Library/Application Support/Surge",
    "~/Library/Caches/com.nssurge.surge-mac*",
    "~/Library/HTTPStorages/com.nssurge.surge-mac",
    "~/Library/Logs/Surge",
    "~/Library/Preferences/com.nssurge.surge*",
    "~/Library/Saved Application State/com.nssurge.surge*",
  ]
end
