cask "drainspot" do
  version "1.5.0,21"
  sha256 "a0ddd80a01bc87180ec8439355974331ae546128b64105eab95fcf78e3d399a9"

  url "https://drainspot.app/downloads/Drainspot-#{version.csv.first}-build#{version.csv.second}.dmg"
  name "Drainspot"
  desc "Battery monitor showing which apps drain the battery"
  homepage "https://drainspot.app/"

  livecheck do
    url "https://drainspot.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Drainspot.app"

  uninstall early_script: {
              executable:   "#{appdir}/Drainspot.app/Contents/MacOS/Drainspot",
              args:         ["--unregister-agent"],
              must_succeed: false,
            },
            launchctl:    "com.drainspotapp.mac.tracker",
            quit:         "com.drainspotapp.mac"

  zap trash: [
    "~/Library/Application Scripts/7Q3PY75VGH.com.drainspotapp.mac",
    "~/Library/Application Scripts/com.drainspotapp.mac.widget",
    "~/Library/Caches/com.drainspotapp.mac",
    "~/Library/Caches/com.drainspotapp.mac.agent",
    "~/Library/Containers/com.drainspotapp.mac.widget",
    "~/Library/Group Containers/7Q3PY75VGH.com.drainspotapp.mac",
    "~/Library/HTTPStorages/com.drainspotapp.mac",
    "~/Library/HTTPStorages/com.drainspotapp.mac.agent",
    "~/Library/Preferences/com.drainspotapp.mac.plist",
    "~/Library/WebKit/com.drainspotapp.mac",
  ]
end
