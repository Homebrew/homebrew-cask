cask "joplin" do
  arch arm: "-arm64"

  version "3.6.16"
  sha256 arm:   "0aa77a277bc2040aae73ce1f77c6eca5e52d6d21f8e83cfbc206916b600bfb4e",
         intel: "6a2fef367384e5ee54b89471e68a860973de6f01444d20da3b16f3dccdf63f1a"

  url "https://github.com/laurent22/joplin/releases/download/v#{version}/Joplin-#{version}#{arch}.DMG",
      verified: "github.com/laurent22/joplin/"
  name "Joplin"
  desc "Note taking and to-do application with synchronisation capabilities"
  homepage "https://joplinapp.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Joplin.app"

  zap trash: [
    "~/Library/Application Support/Joplin",
    "~/Library/Preferences/net.cozic.joplin-desktop.helper.plist",
    "~/Library/Preferences/net.cozic.joplin-desktop.plist",
    "~/Library/Saved Application State/net.cozic.joplin-desktop.savedState",
  ]
end
