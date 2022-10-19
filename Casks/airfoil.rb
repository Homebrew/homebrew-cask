cask "airfoil" do
  version "5.11.2"
  sha256 :no_check

  url "https://rogueamoeba.com/airfoil/mac/download/Airfoil.zip"
  name "Airfoil"
  desc "Sends audio from computer to outputs"
  homepage "https://www.rogueamoeba.com/airfoil/mac/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.airfoil&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
