cask "longplay" do
  version "0.8.1,467"
  sha256 "e941a368e20b69af84ad1647bf5b5fa8cdf7e078d6c4f61ac73ab90e17343ac4"

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
