cask "kimi" do
  version "2.0.4"
  sha256 "3de7ec7e0ee5848482b3655c4cf96e184cc0e6bcb4da9e1bcacf5201cf2a7709"

  url "https://kimi-img.moonshot.cn/app/download/macos/kimi_#{version}.dmg",
      verified: "kimi-img.moonshot.cn/"
  name "kimi"
  desc "AI chat assistant from Moonshot"
  homepage "https://www.moonshot.ai/"

  livecheck do
    url "https://appsupport.moonshot.cn/api/app/pkg/latest/macos/download"
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "Kimi.app"

  zap trash: [
    "~/Library/Application Support/kimi",
    "~/Library/Caches/KimiAppCache",
    "~/Library/HTTPStorages/com.moonshot.kimichat",
    "~/Library/Preferences/com.moonshot.kimichat.plist",
  ]
end
