cask "airfoil" do
  version "5.9.4"
  sha256 "cdd5e461b8579afffa793d793fe5185ba295254724740c2587a01418a5d43ec7"

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
