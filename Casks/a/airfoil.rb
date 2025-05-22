cask "airfoil" do
  sha256 :no_check

  on_ventura :or_older do
    version "5.11.8"

    url "https://cdn.rogueamoeba.com/airfoil/mac/download/Airfoil-ACE.zip"

    # The ACE release supports macOS 11 to 14.3.1, so we use the highest
    # supported macOS version in the URL.
    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1431&bundleid=com.rogueamoeba.airfoil&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end
  end
  on_sonoma :or_newer do
    version "5.12.4"

    url "https://cdn.rogueamoeba.com/airfoil/mac/download/Airfoil.zip"

    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=999&bundleid=com.rogueamoeba.airfoil&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end

    # NOTE: See https://www.rogueamoeba.com/support/knowledgebase/?showCategory=Airfoil+for+Mac
    caveats "Airfoil #{version} requires macOS 14.4 or higher."
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
