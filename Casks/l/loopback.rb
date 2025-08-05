cask "loopback" do
  sha256 :no_check

  on_ventura :or_older do
    version "2.3.3"

    url "https://cdn.rogueamoeba.com/loopback/download/Loopback-ACE.zip"

    # The ACE release supports macOS 11 to 14.4.1, so we use the highest
    # supported macOS version in the URL.
    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1441&bundleid=com.rogueamoeba.Loopback&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end
  end
  on_sonoma :or_newer do
    version "2.4.6"

    url "https://cdn.rogueamoeba.com/loopback/download/Loopback.zip"

    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=999&bundleid=com.rogueamoeba.Loopback&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end

    # NOTE: See https://www.rogueamoeba.com/support/knowledgebase/?showCategory=Loopback
    caveats "Loopback #{version} requires macOS 14.5 or newer."
  end

  name "Loopback"
  desc "Cable-free audio router"
  homepage "https://rogueamoeba.com/loopback/"

  auto_updates true
  depends_on macos: ">= :big_sur"

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
