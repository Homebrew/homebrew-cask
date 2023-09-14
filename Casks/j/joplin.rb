cask "joplin" do
  arch arm: "-arm64"

  version "2.12.17"
  sha256 arm:   "f476eb3dcf00475ef48db1be3a17b4623b8febceb609589f9acc1dd66aa0f85a",
         intel: "b0efbfd21f089e959aa129555304c45938dc17068749e371025605baff02048f"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronization capabilities"
  homepage "https://joplinapp.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Joplin.app"

  zap trash: [
    "~/Library/Application Support/Joplin",
    "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
    "~/Library/Preferences/net.cozic.joplin-desktop.plist",
    "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
  ]
end
