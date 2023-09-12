cask "joplin" do
  arch arm: "-arm64"

  version "2.12.16"
  sha256 arm:   "761c0fa93fb37c160e554579269acf7e0ad2251d9936c0b72c99911c62553389",
         intel: "bd6739cb1de2e51bbcbeb41bad3430af8dd9301cce01bf76e787314c783a03f4"

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
