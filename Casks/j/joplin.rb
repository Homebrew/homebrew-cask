cask "joplin" do
  arch arm: "-arm64"

  version "2.14.20"
  sha256 arm:   "961df5860434fd6c1cad7dadfe86d2cd749f9fbc2f2d8d9798af1462c82b3e75",
         intel: "5f8c25126dcfea074e758fbb1650a7d46ce605c05a4f9522a15f5096cdfeb649"

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
