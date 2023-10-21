cask "joplin" do
  arch arm: "-arm64"

  version "2.12.19"
  sha256 arm:   "581e3e394484e9f06abefec004dab9237ac5738dc21fc641bf1101ebceece343",
         intel: "a34437c1fc24a4db78244c7b83ec5de234738c6b8845c18fddda31cc6d737453"

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
