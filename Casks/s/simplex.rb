cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.5.1"
  sha256 arm:   "1dbd8bd00bc158cbc5c4c1ec011f91a4ebcd65dfda8c1491522fa5a9e3366f5b",
         intel: "7914a00911d3f1b48854f8a1f9e9badf1926292b325f79b996dbe9693f469b2a"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg",
      verified: "github.com/simplex-chat/simplex-chat/"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "SimpleX.app"

  zap trash: "~/Library/Saved Application State/chat.simplex.app.savedState"
end
