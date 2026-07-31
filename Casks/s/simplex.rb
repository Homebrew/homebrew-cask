cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.0.0"
  sha256 arm:   "bc7f89221589ce4ed7fecbbcf4c780e8ad213846c22c13284adeb6fc503275d9",
         intel: "ef13cc53ff795d3b93ebdb5ca7c57d7ab699b9d57491a8ee3620e253c8bcb60d"

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
