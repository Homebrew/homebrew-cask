cask "joplin" do
  arch arm: "-arm64"

  version "3.5.13"
  sha256 arm:   "2f99fa5591f0ab5007e5e1cbff0dfb03055a1d78a15f003ec38594cd1f563aab",
         intel: "05c0f09762da82ccf34895e9a870b4f72d8eaa3d82aa654752b1fc915993427b"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
  homepage "https://joplinapp.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Joplin.app"

  zap trash: [
    "~/Library/Application Support/Joplin",
    "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
    "~/Library/Preferences/net.cozic.joplin-desktop.plist",
    "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
  ]
end
