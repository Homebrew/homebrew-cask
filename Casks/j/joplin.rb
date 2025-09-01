cask "joplin" do
  arch arm: "-arm64"

  version "3.3.13"
  sha256 arm:   "070884eb242981626e6309e247d804ffdf9f1211b70ebc3a24bc6160c7c04ead",
         intel: "c5198a23b605a155868c30aa748cb980d9d08ceea288ae06529e4a65718b6517"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
  homepage "https://joplinapp.org/"

  # Upstream has created seemingly stable releases on GitHub only to later mark
  # them as pre-release. This checks the first-party download page, hoping
  # that this will help to avoid this situation in the future.
  livecheck do
    url "https://joplinapp.org/download/"
    regex(/href=.*?Joplin[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
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
