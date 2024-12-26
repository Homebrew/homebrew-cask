cask "maa" do
  version "5.11.0"
  sha256 "fdcd6aafab4d03f1e55ce45abaf9cac4aa89d609c1ad42000aeda63f3eb249bd"

  url "https://github.com/MaaAssistantArknights/MaaAssistantArknights/releases/download/v#{version}/MAA-v#{version}-macos-universal.dmg"
  name "MAA"
  desc "One-click tool for the daily tasks of Arknights"
  homepage "https://github.com/MaaAssistantArknights/MaaAssistantArknights"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "MAA.app"

  zap trash: [
    "~/Library/Application Scripts/com.hguandl.MeoAsstMac",
    "~/Library/Containers/com.hguandl.MeoAsstMac",
  ]
end
