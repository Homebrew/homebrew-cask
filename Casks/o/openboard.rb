cask "openboard" do
  version "1.7.5"
  sha256 "f0f06c57e437096a379e1153e50ae5c2941f24e1e56906b78b398562e4d4a34b"

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
