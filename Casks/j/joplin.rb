cask "joplin" do
  arch arm: "-arm64"

  version "2.13.13"
  sha256 arm:   "5e1e785ab2db1dc6c6324cfd64dd3b66e4b07a51dd8fdeec1f57906f47200108",
         intel: "b5475372be42906a84753b86c19bc19b0316de80825f07569da5e38c04c78d08"

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
