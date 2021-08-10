cask "joplin" do
  version "2.2.6"
  sha256 "8c2663b73141c60c835fbc33e4b24d1ec7a6500d4a5edae2f039232647714fda"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}.dmg",
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
