cask "longplay" do
  version "0.7.0,465"
  sha256 "81d79d3f6cb4d178a88320ad854dcc0a5912ea48a35a9c4d9edf108af04f43d6"

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
