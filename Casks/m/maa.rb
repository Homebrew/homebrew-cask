cask "maa" do
  version "6.23.1"
  sha256 "c70777ab2612eb75719b2979695b629f7c7b3735c097973a8debb8f426f26160"

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
  depends_on macos: :sonoma

  app "MAA.app"

  zap trash: [
    "~/Library/Application Scripts/com.hguandl.MeoAsstMac",
    "~/Library/Containers/com.hguandl.MeoAsstMac",
  ]
end
