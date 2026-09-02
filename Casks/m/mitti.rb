cask "mitti" do
  version "2.8.18,1441"
  sha256 "f05e2e3316d5bd2b39de0e34786fe89c367a86523915d7658bed219e590b0a66"

  url "https://dl.imimot.com/Mitti#{version.csv.first}_#{version.csv.second}.dmg"
  name "Mitti"
  desc "Video playback software"
  homepage "https://imimot.com/mitti/"

  livecheck do
    url "https://imimot.com/versions/MittiAppcast_v2.php?beta=0&product=mitti#{version.major}&app_version=0"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Mitti.app"

  zap trash: [
    "~/Library/Application Scripts/com.imimot.Mitti.*.MittiQuicklook",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.imimot.mitti.*.sfl*",
    "~/Library/Application Support/Mitti",
    "~/Library/Containers/com.imimot.Mitti.*.MittiQuicklook",
    "~/Library/HTTPStorages/com.imimot.Mitti.*",
    "~/Library/Logs/Mitti",
    "~/Library/Preferences/com.imimot.Mitti.*.plist",
  ]
end
