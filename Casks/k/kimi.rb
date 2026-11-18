cask "kimi" do
  version "3.2.28"
  sha256 "37529b0ee63f5a125dcd6ee9930f02d732311ff49313f4b75a1379e5402dcc63"

  url "https://kimi-img.moonshot.cn/app/download/mac/kimi_#{version}.dmg"
  name "kimi"
  desc "AI chat assistant from Moonshot"
  homepage "https://www.moonshot.ai/"

  livecheck do
    url "https://appsupport.moonshot.cn/api/app/pkg/latest/macos/download",
        user_agent: :browser
    strategy :header_match
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Kimi Installer.app/Contents/Helpers/Kimi.app"

  zap trash: [
    "~/.kimi-webbridge",
    "~/.kimi-work",
    "~/Library/Application Scripts/com.moonshot.kimichat.share",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.moonshot.kimichat.sfl*",
    "~/Library/Application Support/kimi",
    "~/Library/Application Support/kimi-desktop",
    "~/Library/Caches/KimiAppCache",
    "~/Library/Containers/com.moonshot.kimichat.share",
    "~/Library/HTTPStorages/com.moonshot.kimichat",
    "~/Library/Logs/kimi-desktop",
    "~/Library/Preferences/com.moonshot.kimichat.plist",
  ]
end
