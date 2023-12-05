cask "joplin" do
  arch arm: "-arm64"

  version "2.13.8"
  sha256 arm:   "404aa33b3ce581300cc54bbc24bef5f56412fbca9803dbcc72fc8b6fbc2e19d5",
         intel: "ba833928795fc30d73139368234241b700f97ba30b79420ebf928e2d5ec3ebc7"

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
