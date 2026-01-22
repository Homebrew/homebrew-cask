cask "openboard" do
  version "1.7.4"
  sha256 "0c1f0f9a64bd2c57c8970f961ceaa87e32e0af49abb9e9c2cab0505ff4a12fe2"

  url "https://github.com/OpenBoard-org/OpenBoard/releases/download/v#{version}/OpenBoard-#{version}.dmg",
      verified: "github.com/OpenBoard-org/OpenBoard/"
  name "OpenBoard"
  desc "Interactive whiteboard application"
  homepage "https://openboard.ch/index.en.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "OpenBoard.app"

  zap trash: [
    "~/Library/Application Support/OpenBoard",
    "~/Movies/OpenBoard",
    "~/Music/OpenBoard",
    "~/Pictures/OpenBoard",
  ]
end
