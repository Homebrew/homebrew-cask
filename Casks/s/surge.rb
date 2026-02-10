cask "surge" do
  version "6.4.3,10320,a70a06382543d5a6ae0c0296e4148569"
  sha256 "164ed394314dd21e12496715732d515b9187306a79928df743c899ef47ee59cd"

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
  binary "#{appdir}/Surge.app/Contents/Applications/Surge Dashboard.app", target: "#{appdir}/Surge Dashboard.app"
  binary "#{appdir}/Surge.app/Contents/Applications/surge-cli"
  binary "#{appdir}/Surge.app/Contents/Applications/surge-dhcpd", target: "#{HOMEBREW_PREFIX}/sbin/surge-dhcpd"

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
