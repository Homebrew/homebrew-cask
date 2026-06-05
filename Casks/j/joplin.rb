cask "joplin" do
  arch arm: "-arm64"

  version "3.6.14"
  sha256 arm:   "7c620afe2598a89ebfeaa1949267e4757eb57138b734e45d8c8a8ac8b6655fd4",
         intel: "65517db3d09118065cb8b6bbaf00de6a90d1da4bd214be86d4bcf56f4626d034"

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
