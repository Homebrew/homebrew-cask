cask "longplay" do
  version "0.9.5,477"
  sha256 "1ef83e1e73c142a8f2904e4bf2181b410f0c19b06808ed3414fa1a5427074fa3"

  url "https://download.longplay.app/mac/longplay-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "download.longplay.app/"
  name "Longplay"
  desc "Album-focused music player"
  homepage "https://longplay.rocks/"

  livecheck do
    url "https://download.longplay.app/mac/appcast.xml"
    strategy :sparkle
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
