cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.5.5"
  sha256 arm:   "33392a3bd2d125f6d503e1459e5aa3eb0136d45069def52b6249eec8e207f720",
         intel: "9a013dbb8bf1edf4906c5f5d4a9bca0377346e5f93407aad7e360b9ca3d23467"

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
