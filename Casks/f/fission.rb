cask "fission" do
  version "2.9.3"
  sha256 :no_check

  url "https://cdn.rogueamoeba.com/fission/download/Fission.zip"
  name "Fission"
  desc "Audio editor"
  homepage "https://rogueamoeba.com/fission/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=999&bundleid=com.rogueamoeba.fission&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Fission.app"

  uninstall quit: "com.rogueamoeba.Fission"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rogueamoeba.fission.sfl*",
    "~/Library/Application Support/Fission",
    "~/Library/Caches/com.rogueamoeba.Fission",
    "~/Library/HTTPStorages/com.rogueamoeba.Fission",
    "~/Library/Preferences/com.rogueamoeba.Fission.plist",
    "~/Library/WebKit/com.rogueamoeba.Fission",
  ]
end
