cask "trim-enabler" do
  version "4.3.6,26,1609590590"
  sha256 "e26f27030303c41cfcfe59fe72ad43202db666bcaaf9047ebf52cbad87896db5"

  url "https://dl.devmate.com/org.cindori.TrimEnabler4/#{version.csv.second}/#{version.csv.third}/TrimEnabler-#{version.csv.second}.zip",
      verified: "dl.devmate.com/org.cindori.TrimEnabler4/"
  name "Trim Enabler"
  desc "Enable trim for SSD performance"
  homepage "https://cindori.org/trimenabler/"

  livecheck do
    url "https://updates.devmate.com/org.cindori.TrimEnabler#{version.major}.xml"
    regex(%r{/(\d+)/TrimEnabler\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  app "Trim Enabler.app"

  uninstall launchctl: "org.cindori.TEHelper",
            delete:    "/Library/PrivilegedHelperTools/org.cindori.TEHelper"

  zap trash: [
    "~/Library/Application Support/CrashReporter/Trim Enabler_#{version.major}.plist",
    "~/Library/Application Support/org.cindori.TrimEnabler#{version.major}",
    "~/Library/Application Support/Trim Enabler",
    "~/Library/Caches/org.cindori.TrimEnabler#{version.major}",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/org.cindori.TrimEnabler#{version.major}",
    "~/Library/Cookies/org.cindori.TrimEnabler#{version.major}.binarycookies",
    "~/Library/Logs/DiagnosticReports/Trim Enabler_#{version.major}.crash",
    "~/Library/Preferences/org.cindori.TrimEnabler.plist",
    "~/Library/Preferences/org.cindori.TrimEnabler#{version.major}.plist",
    "~/Library/Saved Application State/org.cindori.TrimEnabler#{version.major}.savedState",
  ]
end
