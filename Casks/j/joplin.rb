cask "joplin" do
  arch arm: "-arm64"

  version "2.13.10"
  sha256 arm:   "3bcd180438c65868a3e09448ce5f7a7831b1374c7326db83f795cd812f0e2c39",
         intel: "8c23e1d635f6b69597179b8f7f7c7b57f062535412b38e765e771c924a898264"

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
