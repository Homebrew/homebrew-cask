cask "longplay" do
  version "1.1.11"
  sha256 "08568a9a26443389e7cab63918ae488135f2f010bf73adc49d7f8449d2f003d9"

  url "https://download.longplay.app/mac/Longplay-#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}.dmg"
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
  depends_on macos: :sequoia

  app "Longplay.app"

  uninstall quit: "app.longplay.Longplay-Mac"

  zap trash: [
    "~/Library/Application Scripts/7N3B54ALZK.app.longplay.Longplay",
    "~/Library/Application Scripts/app.longplay.Longplay-Mac",
    "~/Library/Application Scripts/group.app.longplay.Longplay",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.longplay.longplay-mac.sfl*",
    "~/Library/Containers/app.longplay.Longplay-Mac",
    "~/Library/Group Containers/7N3B54ALZK.app.longplay.Longplay",
    "~/Library/Group Containers/group.app.longplay.Longplay",
  ]
end
