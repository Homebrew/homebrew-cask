cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.5.0"
  sha256 arm:   "18390a0ee6d4bc935e247234fa0bae1d276987b58f49908d0f9ec4e3acca5a4d",
         intel: "1ba8f60d4168c9b10786745ceb73aa9edcddc303c3c66fb54c60d9484f445f7c"

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
