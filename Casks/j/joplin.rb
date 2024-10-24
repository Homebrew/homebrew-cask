cask "joplin" do
  arch arm: "-arm64"

  version "3.1.20"
  sha256 arm:   "dd0db4e55faacca8e03fb87ff10306d4bb48902df4dcc8ee1d3eb8f57c1cec87",
         intel: "f6f89339256e97dc565c720158d38b6fd9f7b2986e250f89571d79099256e13a"

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
