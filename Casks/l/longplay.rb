cask "longplay" do
  version "1.1.0,490"
  sha256 "808ecd2e5b7a24ace0ff6bf7790af096d4740ca3f3f540334b472205031303bd"

  url "https://download.longplay.app/mac/longplay-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "download.longplay.app/"
  name "Longplay"
  desc "Album-focused music player"
  homepage "https://longplay.rocks/"

  livecheck do
    url "https://download.longplay.app/mac/appcast.xml"
    regex(/longplay[._-]v?(\d+(?:[.-]\d+)+)/i)
    strategy :sparkle do |items|
      stable_item = items.find { |item| item.channel.nil? }
      next unless stable_item

      stable_item.url&.[](regex, 1)&.tr("-", ",")
    end
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Longplay.app"

  zap trash: [
    "~/Library/Application Scripts/app.longplay.Longplay-Mac",
    "~/Library/Application Scripts/group.app.longplay.Longplay",
    "~/Library/Containers/app.longplay.Longplay-Mac",
    "~/Library/Group Containers/group.app.longplay.Longplay",
  ]
end
