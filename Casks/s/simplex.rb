cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.3.4"
  sha256 arm:   "3d688d3c9fc16d9258bbc448e1d9e8c6bb6f8219a5e672ee116033bf94cbcf67",
         intel: "82dc688a5926a250e30aff22e253487476cd36a01ee20e95f06fc3ca56c4ac7b"

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
