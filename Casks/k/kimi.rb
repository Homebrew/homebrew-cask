cask "kimi" do
  version "2.1.0"
  sha256 "ce67817b2b13d270866151a7a9c99fe229474d3f3fd7f03e2d69433004fbb4b5"

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
