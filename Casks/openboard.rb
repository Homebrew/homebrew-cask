cask "openboard" do
  version "1.6.1"
  sha256 "203741c86d50a7ea63f36b9d9cc607d843fb7ee17729c46764f155f47e356b8b"

  url "https://github.com/OpenBoard-org/OpenBoard/releases/download/v#{version}/OpenBoard-#{version}.dmg",
      verified: "github.com/OpenBoard-org/OpenBoard/"
  name "OpenBoard"
  desc "Interactive whiteboard application"
  homepage "https://openboard.ch/index.en.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenBoard.app"

  zap trash: [
    "~/Music/OpenBoard",
    "~/Movies/OpenBoard",
    "~/Pictures/OpenBoard",
    "~/Library/Application Support/OpenBoard",
  ]
end
