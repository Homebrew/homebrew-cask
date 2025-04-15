cask "longplay" do
  version "0.6.2,463"
  sha256 "1cc3a66f82bf88e25bc5d7a30ce61df1a7de4c2c2d8252123bd774b03993c517"

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
