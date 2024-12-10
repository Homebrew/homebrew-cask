cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.2.0"
  sha256 arm:   "a196b85054e353b7dbd95821669885e1f987bcc8a3a0bff522f7c272765ca0c1",
         intel: "1e25a9cd213cc6cec4360913f52b1757ea48de6fec6ba288bb0c58b738427bd4"

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
