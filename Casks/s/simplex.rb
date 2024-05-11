cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.7.2"
  sha256 arm:   "c2f31d6f5a04ad403d2d3f7f0a124b3038956a71652e072662f7c7d533d4e97c",
         intel: "bed5da061aa6103ee0f6dbc2e5355b4e7869129f98da2760d87d67dd65c1b98b"

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
