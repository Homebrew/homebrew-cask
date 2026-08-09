cask "maa" do
  version "6.16.6"
  sha256 "1920c1f6e523a4315e365ae011e2e48b257c513335a0ac17bf2d5bc194879a53"

  url "https://github.com/MaaAssistantArknights/MaaAssistantArknights/releases/download/v#{version}/MAA-v#{version}-macos-universal.dmg"
  name "MAA"
  desc "One-click tool for the daily tasks of Arknights"
  homepage "https://github.com/MaaAssistantArknights/MaaAssistantArknights"

  livecheck do
    url "https://maa-release.hguandl.com/macos/appcast.xml"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :sparkle do |items, regex|
      items.map do |item|
        next unless item.channel.nil?

        match = item.short_version&.match(regex)
        next unless match

        match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "MAA.app"

  zap trash: [
    "~/Library/Application Scripts/com.hguandl.MeoAsstMac",
    "~/Library/Containers/com.hguandl.MeoAsstMac",
  ]
end
