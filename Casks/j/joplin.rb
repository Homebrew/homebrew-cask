cask "joplin" do
  arch arm: "-arm64"

  version "2.14.21"
  sha256 arm:   "789ea54c98e40d0fecb9ce7950cd967f768ceec4f3d2d2aad6de514b54a4e3df",
         intel: "b4d08c913c940be658c6a5c4c4233abd486d2bdc8e9037339ce34613e45fafa9"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
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
