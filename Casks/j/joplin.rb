cask "joplin" do
  arch arm: "-arm64"

  version "2.14.19"
  sha256 arm:   "8986835294fccf947e653cf3f84f6f1d8e37f0540d576cd6917834a86147813b",
         intel: "476eab50c33e1bf5311228260b3762ad74c7aa2caeadd5ac35aa2b73188554e1"

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
