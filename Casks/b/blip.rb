cask "blip" do
  version "1.2.8,20261029214736"
  sha256 "1109ced4e804026c73bb108c2a9b1ae1324d99a94b9d7f1725d7c1f191b37825"

  url "https://f000.backblazeb2.com/file/push-mac/Blip-#{version.csv.second}.zip"
  name "blip"
  desc "Send any size file between devices"
  homepage "https://blip.net/"

  livecheck do
    url "https://f000.backblazeb2.com/file/push-mac/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :monterey

  app "Blip.app"

  uninstall quit: "net.blip.macos"

  zap trash: [
    "~/Library/Application Scripts/AY8UB8KTUX.blip",
    "~/Library/Application Scripts/net.blip.macos.preview-provider",
    "~/Library/Application Scripts/net.blip.macos.share",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.blip.macos.sfl*",
    "~/Library/Caches/net.blip.macos",
    "~/Library/Containers/net.blip.macos.preview-provider",
    "~/Library/Containers/net.blip.macos.share",
    "~/Library/Group Containers/AY8UB8KTUX.blip",
    "~/Library/HTTPStorages/net.blip.macos",
    "~/Library/HTTPStorages/net.blip.macos.binarycookies",
    "~/Library/Preferences/net.blip.macos.plist",
  ]
end
