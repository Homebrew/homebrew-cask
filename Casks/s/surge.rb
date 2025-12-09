cask "surge" do
  version "6.4.2,9830,28a1025189d49a3f938384b58c8f5000"
  sha256 "5db7fe367c5498b20107ed2064c6033cd6098f6f353b3981427be468f923386a"

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
