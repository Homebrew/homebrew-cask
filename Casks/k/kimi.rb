cask "kimi" do
  version "2.1.1"
  sha256 "ee6286ac3d438b55c4dd62d211de20d2ca357f88350d6440a575f2ea22c53116"

  url "https://kimi-img.moonshot.cn/app/download/macos/kimi_#{version}.dmg",
      verified: "kimi-img.moonshot.cn/"
  name "kimi"
  desc "AI chat assistant from Moonshot"
  homepage "https://www.moonshot.ai/"

  disable! date: "2025-12-25", because: :no_longer_available

  depends_on macos: ">= :big_sur"

  app "Kimi.app"

  zap trash: [
    "~/Library/Application Support/kimi",
    "~/Library/Caches/KimiAppCache",
    "~/Library/HTTPStorages/com.moonshot.kimichat",
    "~/Library/Preferences/com.moonshot.kimichat.plist",
  ]
end
