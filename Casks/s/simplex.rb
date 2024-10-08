cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.0.5"
  sha256 arm:   "83f6f107e226b89a7b9d2f11d2b98255a02a0148373fe321e8378be58ef24875",
         intel: "5c40538ec40ca472fa19286492afd9644befdf0b4a11ae0572190c33ac92efbe"

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
