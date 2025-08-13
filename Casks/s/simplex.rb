cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.3.1"
  sha256 arm:   "bb6d32fefa4567da74568b0c6d92976463ecfd3f8b81667e20fa8c94a1ff6e6c",
         intel: "cd092227bdfb50215237b123c7d27e69f030f02fea84ff5d3d545880cbbd0c84"

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
