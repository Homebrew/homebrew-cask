cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.0.0"
  sha256 arm:   "322161c785c30a348b54ebc7c07821b666b7602541f397c42a2a90fb54ccacd0",
         intel: "12015b3d6dd78b6df1b881f5bf92312900e624b0263a1f373472be8536301c74"

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
