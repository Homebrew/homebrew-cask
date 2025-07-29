cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.1"
  sha256 arm:   "b9856b6e9965a34b7629ef17c46b1bb918e5aeb2faaee11931042b2f62153594",
         intel: "91b9f381bbc07afddb53b3ab8490d07c94ff2d21d5901525fefbc8475fb705d1"

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
