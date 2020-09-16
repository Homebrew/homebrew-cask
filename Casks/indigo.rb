cask "indigo" do
  version "7.4.1"
  sha256 "94d1c705f44912029e84c5cf1a7fbb02726bbc7aa38d777b8a86d8775c59b6a2"

  # goprism.com/ was verified as official when first introduced to the cask
  url "http://cloud.goprism.com/download/Indigo_#{version.dots_to_underscores}.dmg"
  appcast "https://www.indigodomo.com/downloads.html",
          must_contain: version.major_minor
  name "Indigo Domotics"
  homepage "https://www.indigodomo.com/"

  pkg "Indigo Installer.pkg"

  uninstall launchctl: "com.perceptiveautomation.IndigoServer2",
            pkgutil:   "com.perceptiveautomation.pkg.indigo*",
            quit:      [
              "com.perceptiveautomation.indigo-client6",
              "com.perceptiveautomation.indigo-server",
            ]

  zap trash: [
    "/Library/Application Support/Perceptive Automation/Indigo #{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.perceptiveautomation.indigo-client#{version.major}.sfl*",
    "~/Library/Caches/com.perceptiveautomation.indigo-client6",
    "~/Library/Caches/com.perceptiveautomation.indigo-server",
    "~/Library/Preferences/com.perceptiveautomation.indigo-client6.plist",
    "~/Library/Preferences/Indigo #{version.major} Client Prefs.indiPref",
    "~/Library/Preferences/Indigo #{version.major} Client Settings.indiPref",
  ]
end
