cask "peakhour" do
  version "4.1.14,35461"
  sha256 "4c2f2d44f63986d7b6979269ab2988a9a346e70fae8c7e9a29ff28da55baddf3"

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version.csv.first}.zip"
  name "PeakHour"
  desc "Network bandwidth and network quality visualiser"
  homepage "https://www.peakhourapp.com/"

  livecheck do
    url "https://updates.peakhourapp.com/PeakHour#{version.major}Appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "PeakHour #{version.major}.app"

  uninstall launchctl: "com.digitician.peakhour#{version.major}.launchAtLoginHelper",
            quit:      "com.digitician.peakhour#{version.major}"

  zap trash: [
    "~/Library/Application Scripts/com.digitician.peakhour#{version.major}.launchAtLoginHelper",
    "~/Library/Application Support/com.digitician.peakhour#{version.major}",
    "~/Library/Application Support/PeakHour*",
    "~/Library/Caches/com.digitician.peakhour#{version.major}",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.digitician.peakhour#{version.major}",
    "~/Library/Containers/com.digitician.peakhour#{version.major}.launchAtLoginHelper",
    "~/Library/Cookies/com.digitician.peakhour#{version.major}.binarycookies",
    "~/Library/Preferences/com.digitician.peakhour#{version.major}.plist",
  ]
end
