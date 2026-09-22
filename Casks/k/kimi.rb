cask "kimi" do
  version "3.2.12"
  sha256 "88957a93f20cc9719ee9fc80decfa4ab8502404a02e9e9d77874d258fd22d185"

  url "https://kimi-img.moonshot.cn/app/download/mac/kimi_#{version}.dmg"
  name "kimi"
  desc "AI chat assistant from Moonshot"
  homepage "https://www.moonshot.ai/"

  livecheck do
    url "https://appsupport.moonshot.cn/api/app/pkg/latest/macos/download"
    strategy :header_match
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Kimi Installer.app/Contents/Helpers/Kimi.app"

  zap trash: [
    "~/.kimi-webbridge",
    "~/.kimi-work",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.moonshot.kimichat.sfl*",
    "~/Library/Application Support/kimi",
    "~/Library/Application Support/kimi-desktop",
    "~/Library/Caches/KimiAppCache",
    "~/Library/HTTPStorages/com.moonshot.kimichat",
    "~/Library/Logs/kimi-desktop",
    "~/Library/Preferences/com.moonshot.kimichat.plist",
  ]
end
