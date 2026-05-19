cask "maa" do
  version "6.10.4"
  sha256 "e9761aa6134bd6702c40820dff7a66a323143784e3312807a0ec7db7f170cfe6"

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
