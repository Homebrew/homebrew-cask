cask "joplin" do
  arch arm: "-arm64"

  version "3.4.6"
  sha256 arm:   "ecd411b799bc3c887638cee5a9f7547a5549e65389afb14af4130fad97beb1cc",
         intel: "159273d10d94c2d5d57467e9ecce712ed7e9b89810eb397ddcd94796c3b350f9"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
  homepage "https://joplinapp.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Joplin.app"

  zap trash: [
    "~/Library/Application Support/Joplin",
    "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
    "~/Library/Preferences/net.cozic.joplin-desktop.plist",
    "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
  ]
end
