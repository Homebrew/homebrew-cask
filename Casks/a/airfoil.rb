cask "airfoil" do
  sha256 :no_check

  on_ventura :or_older do
    version "5.11.8"

    url "https://cdn.rogueamoeba.com/airfoil/mac/download/Airfoil-ACE.zip"

    depends_on macos: ">= :big_sur"
  end
  on_sonoma :or_newer do
    version "5.12.2"

    url "https://cdn.rogueamoeba.com/airfoil/mac/download/Airfoil.zip"

    depends_on macos: ">= :sonoma"

    # NOTE: See https://www.rogueamoeba.com/support/knowledgebase/?showCategory=Airfoil+for+Mac
    caveats "Airfoil #{version} requires macOS 14.4 or higher."
  end

  name "Airfoil"
  desc "Sends audio from computer to outputs"
  homepage "https://rogueamoeba.com/airfoil/mac/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=#{MacOS.full_version.to_s.delete(".")}&bundleid=com.rogueamoeba.airfoil&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true

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
