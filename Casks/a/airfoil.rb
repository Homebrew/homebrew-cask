cask "airfoil" do
  version "5.11.6"
  sha256 :no_check

  url "https://rogueamoeba.com/airfoil/mac/download/Airfoil.zip"
  name "Airfoil"
  desc "Sends audio from computer to outputs"
  homepage "https://rogueamoeba.com/airfoil/mac/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.airfoil&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Airfoil/Airfoil Satellite.app"
  app "Airfoil/Airfoil.app"

  uninstall quit: [
    "com.rogueamoeba.Airfoil",
    "com.rogueamoeba.AirfoilSpeakers",
  ]

  zap trash: [
    "~/Library/Application Support/Airfoil",
    "~/Library/Application Support/Airfoil Satellite",
    "~/Library/Caches/com.rogueamoeba.Airfoil",
    "~/Library/Caches/com.rogueamoeba.AirfoilSpeakers",
    "~/Library/HTTPStorages/com.rogueamoeba.Airfoil/",
    "~/Library/HTTPStorages/com.rogueamoeba.AirfoilSpeakers/",
    "~/Library/Preferences/com.rogueamoeba.Airfoil.plist",
    "~/Library/Preferences/com.rogueamoeba.AirfoilSpeakers.plist",
    "~/Library/WebKit/com.rogueamoeba.Airfoil/",
    "~/Library/WebKit/com.rogueamoeba.AirfoilSpeakers/",
  ]
end
