cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.4.0"
  sha256 arm:   "02a2f77e33c277941e96d7a55dcee3907d5c85b497f9c2df6cc3ceae122c29eb",
         intel: "52bdc0e5daea57ada3cf240747f03c442cd275b4541e11596262f3a68b71ece7"

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
