cask "tripmode" do
  on_catalina :or_older do
    version "2.3.0,818"
    sha256 "db409c94cbe8f03749e38a9e4acf58efbf7363fb2ca3aff7a316574d9f2b2737"

    url "https://tripmode-updates.ch/app/TripMode-#{version.csv.first}-#{version.csv.second}-app.dmg",
        verified: "tripmode-updates.ch/app/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.2.3,1384,1834"
    sha256 "a5a50fdfe81e78033b16974456fc53434e4c1237ad40f5b881c368e32c6aacdd"

    url "https://tripmode-updates.ch/app/TripMode-#{version.csv.first}-#{version.csv.third || version.csv.second}.zip",
        verified: "tripmode-updates.ch/app/"

    livecheck do
      url "https://tripmode-updates.ch/app/appcast-v#{version.major}.xml"
      regex(%r{/TripMode[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.zip}i)
      strategy :sparkle do |item, regex|
        item.url.scan(regex).map do |match|
          if match[1] == item.version
            "#{item.short_version},#{item.version}"
          else
            "#{item.short_version},#{item.version},#{match[1]}"
          end
        end
      end
    end
  end

  name "TripMode"
  desc "Control your data usage on slow or expensive networks"
  homepage "https://www.tripmode.ch/"

  auto_updates true

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
