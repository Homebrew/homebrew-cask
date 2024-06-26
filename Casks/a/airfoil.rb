cask "airfoil" do
  sha256 :no_check

  on_ventura :or_older do
    version "5.11.8"

    url "https://rogueamoeba.com/airfoil/mac/download/Airfoil.zip"

    # NOTE: The `system` value will need to be kept up to date with the latest
    # macOS Ventura version (e.g. 1366 for 13.6.6).
    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1366&bundleid=com.rogueamoeba.airfoil&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end
  end
  on_sonoma :or_newer do
    version "5.12.1"

    url "https://rogueamoeba.com/airfoil/mac/download/Airfoil-ARK.zip"

    # NOTE: The `system` value will need to be kept up to date with the latest
    # macOS version (e.g. 1441 for 14.4.1).
    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1441&bundleid=com.rogueamoeba.airfoil&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end
  end

  name "Airfoil"
  desc "Sends audio from computer to outputs"
  homepage "https://rogueamoeba.com/airfoil/mac/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Airfoil/Airfoil Satellite.app"
  app "Airfoil/Airfoil.app"

  uninstall quit: [
    "com.rogueamoeba.Airfoil",
    "com.rogueamoeba.AirfoilSpeakers",
  ]

  zap trash: [
    "~/Library/Application Support/Airfoil*",
    "~/Library/Caches/com.rogueamoeba.Airfoil*",
    "~/Library/HTTPStorages/com.rogueamoeba.Airfoil*",
    "~/Library/Preferences/com.rogueamoeba.Airfoil*.plist",
    "~/Library/Saved Application State/com.rogueamoeba.Airfoil*",
    "~/Library/WebKit/com.rogueamoeba.Airfoil*",
  ]
end
