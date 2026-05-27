cask "kimi" do
  version "3.0.12"
  sha256 "300878b8bdf6ff0c8ce99ac4202307396d60ec04fa350bdea13675d9054901f7"

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

  app "Kimi.app"

  zap trash: [
    "~/Library/Application Support/kimi",
    "~/Library/Caches/KimiAppCache",
    "~/Library/HTTPStorages/com.moonshot.kimichat",
    "~/Library/Preferences/com.moonshot.kimichat.plist",
  ]
end
