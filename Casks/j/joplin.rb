cask "joplin" do
  arch arm: "-arm64"

  version "3.1.23"
  sha256 arm:   "99289866a26802de493cdfa9701cc7618a6b986fe1a6a49bce7c9e89fcac77a9",
         intel: "d211729038b2abea9a8738db207f430a057defff216e30086d4f4f2f1e21a723"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
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
