cask "maa" do
  version "6.17.4"
  sha256 "d66409db44bfd7bca5c51d8464478c5677742547ccbc2e0853fec8fe1b9b8c6d"

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
