cask "maa" do
  version "5.15.2"
  sha256 "9a720fc8c3fa52b0cf8027b3b1d1466cc417b1d2a394f8d7246b1f15d977f9b0"

  url "https://github.com/MaaAssistantArknights/MaaAssistantArknights/releases/download/v#{version}/MAA-v#{version}-macos-universal.dmg"
  name "MAA"
  desc "One-click tool for the daily tasks of Arknights"
  homepage "https://github.com/MaaAssistantArknights/MaaAssistantArknights"

  livecheck do
    url "https://maa-release.hguandl.com/macos/appcast.xml"
    strategy :sparkle do |item|
      item.short_version.delete_prefix("v")
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "MAA.app"

  zap trash: [
    "~/Library/Application Scripts/com.hguandl.MeoAsstMac",
    "~/Library/Containers/com.hguandl.MeoAsstMac",
  ]
end
