cask "joplin" do
  arch arm: "-arm64"

  version "3.4.10"
  sha256 arm:   "85f62ab5a17c58a3dd2f4a86f0524e3750c772bcdb686aa9c344fb8e1dcaaa48",
         intel: "a49caa022b23087fe8ecf3226f266184b1db2823741af9dfe78b9ee19a8f5677"

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
