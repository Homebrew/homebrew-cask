cask "joplin" do
  arch arm: "-arm64"

  version "3.6.13"
  sha256 arm:   "151446e61db182554f22436b5fcd1e14622d9c419eea9a17e35ae15e7a0432e1",
         intel: "b97b2181fed78fc7e20a3e7f3af265e02127dde75bc191332bf32663c6329c6d"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
  homepage "https://joplinapp.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Joplin.app"

  zap trash: [
    "~/Library/Application Support/Joplin",
    "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
    "~/Library/Preferences/net.cozic.joplin-desktop.plist",
    "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
  ]
end
