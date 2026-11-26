cask "mitti" do
  version "3.0,4632"
  sha256 "f3d0fb1b45443bb934bbb1b36482cb03cabdd8d06a05d959212fee7c44a569d7"

  url "https://dl.imimot.com/Mitti#{version.csv.first}_#{version.csv.second}.dmg"
  name "Mitti"
  desc "Video playback software"
  homepage "https://imimot.com/mitti/"

  livecheck do
    url "https://imimot.com/versions/MittiAppcast_v2.php?beta=0&product=mitti#{version.major}&app_version=0"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Mitti.app"

  uninstall quit: "com.imimot.Mitti.#{version.major}"

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
