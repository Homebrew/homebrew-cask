cask "kimi" do
  version "3.1.4"
  sha256 "a52cc5221e2a5a0ef05a5825304372a0aa02ebb50137b53c8e3c92bd9e44f54a"

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
