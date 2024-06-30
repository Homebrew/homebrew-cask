cask "loopback" do
  sha256 :no_check

  macosversion_no_dots = "145"
  audio_engine = "ark"

  on_ventura :or_older do
    # macOS 11.0 is oldest supported version
    macosversion_no_dots = "110"
    audio_engine = "ace"

    version "2.3.3"

    depends_on macos: ">= :big_sur"
  end
  on_sonoma :or_newer do
    version "2.4.1"

    depends_on macos: ">= :sonoma"

    # NOTE: see https://weblog.rogueamoeba.com/2024/06/07/now-you-can-install-loopback-in-under-one-minute/#fn1-2024-06-loopback
    caveats "Loopback #{version} requires macOS 14.5 or newer."
  end

  url "https://rogueamoeba.com/loopback/download-#{audio_engine}.php"
  name "Loopback"
  desc "Cable-free audio router"
  homepage "https://rogueamoeba.com/loopback/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=#{macosversion_no_dots}&bundleid=com.rogueamoeba.Loopback&platform=osx&version=#{version.no_dots}8000"
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
