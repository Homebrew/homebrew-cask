cask "joplin" do
  arch arm: "-arm64"

  version "3.5.12"
  sha256 arm:   "ed0295b7e664acc043ec7dcaf7a7f9330b0065d7842a279a07ba4b86e742ed07",
         intel: "521673e6944edc9b3cee2b5a6c233f067a6fb5edc70ff2e125aa6d9afb70d7cf"

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
