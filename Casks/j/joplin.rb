cask "joplin" do
  arch arm: "-arm64"

  version "3.0.12"
  sha256 arm:   "96c383381919e3ec790fa12bdbfa5a4f300c299bea2015642ab587879891beb9",
         intel: "5d93758d3bff161257b85c59e83ea1fef14c74a8bce19f5459f8f60ab3200410"

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
