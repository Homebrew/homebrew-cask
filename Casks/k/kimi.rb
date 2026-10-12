cask "kimi" do
  version "3.2.16"
  sha256 "2b9b89edf9eea92796d86e9f7080a7c8c6358a02f0f773418d0c0332268dd949"

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
