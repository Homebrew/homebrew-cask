cask "breakdown" do
  version "0.9.17,550"
  sha256 "5b63533a12a1d2145bcd76caaf9c5346e5c2cd2f39e56d05c5c9cdf44b93e705"

  url "https://updates.breakdown.live/releases/#{version.csv.first}/#{version.csv.second}/5b63533a12a1d2145bcd76caaf9c5346e5c2cd2f39e56d05c5c9cdf44b93e705-Breakdown-#{version.csv.first}.pkg"
  name "Breakdown"
  desc "Diagnoses whether connection trouble is on LAN, ISP path, or app"
  homepage "https://breakdown.live/"

  livecheck do
    url "https://updates.breakdown.live/appcast/macos/stable.xml"
    strategy :sparkle
  end

  depends_on macos: :ventura

  pkg "Breakdown-#{version.csv.first}.pkg"

  uninstall launchctl: [
              "com.breakdown.capture-helper",
              "com.breakdown.menu.autostart",
            ],
            quit:      "com.breakdown.menu",
            pkgutil:   "com.breakdown.menu",
            delete:    [
              "/Applications/Breakdown",
              "/Library/Application Support/Breakdown",
              "/Library/LaunchAgents/com.breakdown.menu.autostart.plist",
              "/Library/LaunchDaemons/com.breakdown.capture-helper.plist",
              "/Library/PrivilegedHelperTools/breakdown_capture_helper",
              "/var/log/breakdown-capture-helper.log",
              "/var/run/breakdown-capture-helper.sock",
            ]

  zap trash: [
    "~/Library/Application Support/Breakdown",
    "~/Library/LaunchAgents/com.breakdown.menu.autostart.plist",
    "~/Library/Preferences/com.breakdown.menu.plist",
  ]
end
