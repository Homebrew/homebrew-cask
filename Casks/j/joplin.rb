cask "joplin" do
  arch arm: "-arm64"

  version "3.1.24"
  sha256 arm:   "1ed1ee65084892223c1ab841f6708e4c037584eb3ef4f38915122c454362918b",
         intel: "39fe955d7e34b428acfa8bb6e8bb4928e666ffcecfdebb131ed9ef483c05f156"

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
