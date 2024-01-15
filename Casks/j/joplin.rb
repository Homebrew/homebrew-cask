cask "joplin" do
  arch arm: "-arm64"

  version "2.13.15"
  sha256 arm:   "e822976bfb5de7aecdb734d5ee5694ee5f71c3c58e07d45947a235bd778bbb2a",
         intel: "30504e600eb0780c062e9fdecdf539f11bd2946145964834165731eb8abb5a8f"

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
