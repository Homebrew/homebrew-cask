cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.5.1"
  sha256 arm:   "35a595a71cfadc72e1d061f78f432db5e5ec6b8194468bee5275858279e0d363",
         intel: "d0156e84ca9f9e42247e959a922f0210773e6c25937530f74cc7be10f84c0bbe"

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
