cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.6.1"
  sha256 arm:   "aaec0e58ae1fed8e7a62b6d55b5e50616cd57e832671b18f62cffe3cff616132",
         intel: "1fda6bfd88e12e0f2ebadd2c6b200523472e626bbe8e7c19b238f929ba1d88b9"

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
