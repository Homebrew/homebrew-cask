cask "airfoil" do
  version "5.9.2"
  sha256 "7766c6f8a06029e178ce13d394656b8f40297b1e5bde4f48bf1773a6551638c7"

  url "https://rogueamoeba.com/airfoil/mac/download/Airfoil.zip"
  appcast "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Airfoil&platform=osx"
  name "Airfoil"
  desc "Sends audio from computer to outputs"
  homepage "https://www.rogueamoeba.com/airfoil/mac/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Airfoil/Airfoil Satellite.app"
  app "Airfoil/Airfoil.app"

  uninstall delete: "/Library/Audio/Plug-Ins/HAL/InstantOn.driver",
            quit:   [
              "com.rogueamoeba.Airfoil",
              "com.rogueamoeba.AirfoilSpeakers",
            ]

  zap trash: [
    "~/Library/Application Support/Airfoil",
    "~/Library/Application Support/Airfoil Satellite",
    "~/Library/Caches/com.rogueamoeba.Airfoil",
    "~/Library/Caches/com.rogueamoeba.AirfoilSpeakers",
    "~/Library/Preferences/com.rogueamoeba.Airfoil.plist",
    "~/Library/Preferences/com.rogueamoeba.AirfoilSpeakers.plist",
    "~/Library/Saved Application State/com.rogueamoeba.Airfoil.savedState",
    "~/Library/Saved Application State/com.rogueamoeba.AirfoilSpeakers.savedState",
  ]
end
