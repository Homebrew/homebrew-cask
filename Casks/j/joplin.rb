cask "joplin" do
  arch arm: "-arm64"

  version "3.3.9"
  sha256 arm:   "c33d8242a56af96bb1ff64ccc9cb97caaef597175d021bc83137e9d620ed2964",
         intel: "aa566cc50d7a8e72ab41040bb813806f85719531950b8a3bc3c1885e4fc687c5"

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
