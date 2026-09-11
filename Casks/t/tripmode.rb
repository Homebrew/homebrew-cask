cask "tripmode" do
  version "3.2.4,1385"
  sha256 "2a5a21ac4c13b5a1a5d43e6aeb2b7588ea9af0116e41829fca19cf9752265410"

  url "https://tripmode-updates.ch/app/TripMode-#{version.csv.first}-#{version.csv.third || version.csv.second}.zip"
  name "TripMode"
  desc "Control your data usage on slow or expensive networks"
  homepage "https://www.tripmode.ch/"

  livecheck do
    url "https://tripmode-updates.ch/app/appcast-v#{version.major}.xml"
    regex(%r{/TripMode[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.zip}i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex).map do |match|
        if match[1] == item.version
          item.nice_version
        else
          "#{item.nice_version},#{match[1]}"
        end
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "TripMode.app"

  uninstall launchctl: [
              "ch.tripmode.nke.TripMode",
              "ch.tripmode.TripMode.HelperTool",
            ],
            signal:    ["TERM", "ch.tripmode.TripMode"],
            delete:    "/Library/PrivilegedHelperTools/ch.tripmode.TripMode.HelperTool"

  zap trash: [
    "/Library/Application Support/Tripmode",
    "~/Library/Application Scripts/com.alix-sarl.TripMode",
    "~/Library/Application Scripts/P39EL2R8C4.com.alix-sarl.TripMode",
    "~/Library/Application Support/Tripmode",
    "~/Library/Caches/ch.tripmode.TripMode",
    "~/Library/Caches/com.apple.helpd/Generated/ch.tripmode.TripMode.help*",
    "~/Library/Group Containers/P39EL2R8C4.com.alix-sarl.TripMode",
    "~/Library/Preferences/ch.tripmode.TripMode.plist",
  ]
end
