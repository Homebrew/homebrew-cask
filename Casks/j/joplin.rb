cask "joplin" do
  arch arm: "-arm64"

  version "2.12.15"
  sha256 arm:   "1bd09fb676914f0ab72beb4165d193e0739d4d7470fdd5a72cd9b77fd08e9c7a",
         intel: "8b7c6a3147d426901c2737598b4170b0c48530f3a51ac6261ad4666c29fd51e4"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronization capabilities"
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
