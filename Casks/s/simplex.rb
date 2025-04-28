cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.3.3"
  sha256 arm:   "cdc5dc0e55149995d437ff36817e6eca18db9109093b7767769406e757a8c5ef",
         intel: "8453d3facaef7dfc31fb63030ba0390af670cd7329c05be957ea8beb240b634c"

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
