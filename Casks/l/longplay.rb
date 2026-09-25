cask "longplay" do
  version "1.1.10"
  sha256 "0ebaa13e994155b849e6a8c21a119a296ac16ceb3453db82774014eb3ecce6bb"

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
    "~/Library/Application Scripts/app.longplay.Longplay-Mac",
    "~/Library/Application Scripts/group.app.longplay.Longplay",
    "~/Library/Containers/app.longplay.Longplay-Mac",
    "~/Library/Group Containers/group.app.longplay.Longplay",
  ]
end
