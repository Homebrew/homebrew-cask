cask "joplin" do
  arch arm: "-arm64"

  version "3.0.15"
  sha256 arm:   "53300660829de6cc2d97a5cd1554cf7a0d27ab028ab6ed1edfaf8b034422bacc",
         intel: "b3b8194abff954e83c6eac463dc90aed4c43a6f9ac3607618c383e9719cefe55"

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
