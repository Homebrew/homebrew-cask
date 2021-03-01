cask "peakhour" do
  version "4.1.12,35332"
  sha256 "f255b7bcb53e8eeb99adda90bb60f8cde92df89c09ae9de1ce5f4ecb7e62366c"

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version.before_comma}.zip"
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
