cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.3.1"
  sha256 arm:   "4008a46a9818424af1ac746ecb1ec9b2559b3134d890cc45570abd6e349efec1",
         intel: "d2a5cc6a33a10560808d3db8cf80f17410456d563cd96ae4d857b4563259472a"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg",
      verified: "github.com/simplex-chat/simplex-chat/"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "SimpleX.app"

  zap trash: "~/Library/Saved Application State/chat.simplex.app.savedState"
end
