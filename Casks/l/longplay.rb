cask "longplay" do
  version "1.0.1,478"
  sha256 "513fd74c8c5a3d30afe867a26bb285dcdbcb11b90e34b30a5d6579ea00be8a83"

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
