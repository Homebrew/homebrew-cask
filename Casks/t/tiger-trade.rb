cask "tiger-trade" do
  version "9.29.2"
  sha256 "341133afbd5c77b547afc58f083b2f5f74af59c2a5acdc2dd23e8bd9f17d9694"

  url "https://download.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version}.dmg"
  name "Tiger Trade"
  name "老虎证券"
  desc "Trading platform"
  homepage "https://www.itiger.com/sg/download/"

  livecheck do
    url "https://download.tigerfintech.com/desktop/cdn/f/TigerTrade_latest.dmg"
    strategy :extract_plist do |items|
      items["com.itiger.TigerTrade-Mac"]&.short_version
    end
  end

  depends_on :macos

  app "Tiger Trade.app"

  zap trash: [
    "~/Library/Application Scripts/com.itiger.TigerTrade-Mac",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.itiger.tigertrade-mac.sfl*",
    "~/Library/Containers/com.itiger.TigerTrade-Mac",
  ]
end
