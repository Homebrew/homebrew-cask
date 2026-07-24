cask "kimi" do
  version "3.1.5"
  sha256 "1ebf4a714eae664faa9e99c14d8ebee28f81cb753ced75d545b5cc62ea3691db"

  url "https://kimi-img.moonshot.cn/app/download/mac/kimi_#{version}.dmg",
      verified: "kimi-img.moonshot.cn/"
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
    "~/Library/Application Support/kimi",
    "~/Library/Application Support/kimi-desktop",
    "~/Library/Caches/KimiAppCache",
    "~/Library/Caches/KimiAppCache",
    "~/Library/HTTPStorages/com.moonshot.kimichat",
    "~/Library/HTTPStorages/com.moonshot.kimichat",
    "~/Library/Logs/kimi-desktop",
    "~/Library/Logs/kimi-desktop",
    "~/Library/Preferences/com.moonshot.kimichat.plist",
  ]
end
