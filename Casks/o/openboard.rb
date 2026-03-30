cask "openboard" do
  version "1.7.7"
  sha256 "23a0c2eb78a21f7edf36649c6cd99890a819a757d4f5f8b0498e13dac0353a88"

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
