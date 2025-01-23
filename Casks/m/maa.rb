cask "maa" do
  version "5.12.1"
  sha256 "cd4b946971550cc7c459d94d77322825aa890ff1bfca49251d4268e4af8774be"

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
