cask "joplin" do
  arch arm: "-arm64"

  version "3.5.11"
  sha256 arm:   "2e298dff70522c88cb550a3647203663d4d75c2970f491c4eb342e71fe46dd67",
         intel: "fbcba6c2bd0106dfc94d3e4e1fdf7f6065abc0fc9cce4ddd3c3b49f9a0b7a3c2"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
  homepage "https://joplinapp.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Joplin.app"

  zap trash: [
    "~/Library/Application Support/Joplin",
    "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
    "~/Library/Preferences/net.cozic.joplin-desktop.plist",
    "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
  ]
end
