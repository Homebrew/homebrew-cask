cask "loopback" do
  version "2.4.8"
  sha256 :no_check

  url "https://cdn.rogueamoeba.com/loopback/download/Loopback.zip"
  name "Loopback"
  desc "Cable-free audio router"
  homepage "https://rogueamoeba.com/loopback/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=999&bundleid=com.rogueamoeba.Loopback&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

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

  caveats <<~EOS
    Loopback #{version} requires macOS 14.5 or higher.
    Older versions of macOS will download a compatible version after opening the app.
    See https://www.rogueamoeba.com/support/knowledgebase/?showCategory=Loopback for more details.
  EOS
end
