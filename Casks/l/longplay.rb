cask "longplay" do
  version "1.1.1,492"
  sha256 "6edcc85bffad4b55c702ca183368b73216508287482bd6393db4e7bf444e270b"

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
