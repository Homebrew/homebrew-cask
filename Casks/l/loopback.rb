cask "loopback" do
  sha256 :no_check

  on_ventura :or_older do
    version "2.3.3"

    url "https://cdn.rogueamoeba.com/loopback/download/Loopback.zip"

    depends_on macos: ">= :big_sur"
  end
  on_sonoma :or_newer do
    version "2.4.2"

    url "https://cdn.rogueamoeba.com/loopback/download/Loopback-ARK.zip"

    depends_on macos: ">= :sonoma"

    # NOTE: See https://www.rogueamoeba.com/support/knowledgebase/?showCategory=Loopback
    caveats "Loopback #{version} requires macOS 14.5 or newer."
  end

  name "Loopback"
  desc "Cable-free audio router"
  homepage "https://rogueamoeba.com/loopback/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=#{MacOS.full_version.to_s.delete(".")}&bundleid=com.rogueamoeba.Loopback&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true

  app "Loopback.app"

  uninstall quit:   [
              "com.rogueamoeba.Loopback",
              "com.rogueamoeba.loopbackd",
            ],
            delete: "~/Library/LaunchAgents/com.rogueamoeba.loopbackd.plist"

  zap trash: [
    "~/Library/Application Support/Loopback",
    "~/Library/Caches/com.rogueamoeba.Loopback",
    "~/Library/HTTPStorages/com.rogueamoeba.[Ll]oopback*",
    "~/Library/Preferences/com.rogueamoeba.[Ll]oopback*.plist",
    "~/Library/Saved Application State/com.rogueamoeba.Loopback.savedState",
    "~/Library/WebKit/com.rogueamoeba.Loopback",
  ]
end
