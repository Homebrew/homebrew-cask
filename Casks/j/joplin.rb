cask "joplin" do
  arch arm: "-arm64"

  version "3.6.11"
  sha256 arm:   "5090dd38adf855d068944922d1089746cfa4d7e3aae06288b2f5a6d1d9778759",
         intel: "d9a8f0158e2520a5ea5bd0e4e3a2b821dc315926959d053e72433517405a0a70"

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
