cask "joplin" do
  arch arm: "-arm64"

  version "3.2.12"
  sha256 arm:   "809cea6e92aaecd56b93365b22a53580b2b64261e3877f77e6388ea87c5a4a30",
         intel: "f315afbd40438c1ffbbcd535d817c7df37befadc26ba26231c86b681d81749b4"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
  homepage "https://joplinapp.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Joplin.app"

  zap trash: [
    "~/Library/Application Support/Joplin",
    "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
    "~/Library/Preferences/net.cozic.joplin-desktop.plist",
    "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
  ]
end
