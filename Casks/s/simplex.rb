cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.11"
  sha256 arm:   "46fb3b4acf318c5df229c3de10ad3368e7173cc548ff417079c8a3c818c16008",
         intel: "e7e9b8ce22d0617f469144f9fc23ae8698a79f0054f86a1037b6f71d10be5a82"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg",
      verified: "github.com/simplex-chat/simplex-chat/"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SimpleX.app"

  zap trash: "~/Library/Saved Application State/chat.simplex.app.savedState"
end
