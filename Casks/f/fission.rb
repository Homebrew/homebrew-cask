cask "fission" do
  version "2.8.5"
  sha256 :no_check

  url "https://rogueamoeba.com/fission/download/Fission.zip"
  name "Fission"
  desc "Audio editor"
  homepage "https://rogueamoeba.com/fission/"

  # NOTE: The `system` value will need to be kept up to date with the latest
  # macOS version (e.g. 1441 for 14.4.1).
  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1441&bundleid=com.rogueamoeba.fission&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Fission.app"

  uninstall quit: "com.rogueamoeba.Fission"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rogueamoeba.fission.sfl*",
    "~/Library/Application Support/Fission/",
    "~/Library/Caches/com.rogueamoeba.Fission",
    "~/Library/HTTPStorages/com.rogueamoeba.Fission",
    "~/Library/Preferences/com.rogueamoeba.Fission.plist",
    "~/Library/WebKit/com.rogueamoeba.Fission",
  ]
end
