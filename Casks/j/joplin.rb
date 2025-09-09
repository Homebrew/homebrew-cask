cask "joplin" do
  arch arm: "-arm64"

  version "3.4.12"
  sha256 arm:   "d02bdb39d25165921f36eed09fcd7583f65fd565c9aef1ab2a1ab649355efebe",
         intel: "96a0d256dd43a360277cca8a9b087220414d9c7c4b4ce2828df63e74059b33b2"

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
