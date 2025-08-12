cask "blip" do
  version "1.1.9,20250811144059"
  sha256 "34ded4e40a14daab6b6929c5c930d1dcb45db5ed141660661fa477ef5d9cc676"

  url "https://f000.backblazeb2.com/file/push-mac/Blip-#{version.csv.second}.zip",
      verified: "f000.backblazeb2.com/file/push-mac/"
  name "blip"
  desc "Send any size file between devices"
  homepage "https://blip.net/"

  livecheck do
    url "https://f000.backblazeb2.com/file/push-mac/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

  app "Blip.app"

  zap trash: [
    "~/Library/Application Scripts/AY8UB8KTUX.blip",
    "~/Library/Application Scripts/net.blip.macos.preview-provider",
    "~/Library/Application Scripts/net.blip.macos.share",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.blip.macos.sfl*",
    "~/Library/Containers/net.blip.macos.preview-provider",
    "~/Library/Containers/net.blip.macos.share",
    "~/Library/Group Containers/AY8UB8KTUX.blip",
    "~/Library/HTTPStorages/net.blip.macos",
    "~/Library/HTTPStorages/net.blip.macos.binarycookies",
    "~/Library/Preferences/net.blip.macos.plist",
  ]
end
