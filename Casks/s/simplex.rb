cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.5.4"
  sha256 arm:   "1fe8c949010f2641d793ad207d05e1cb9832867d1fc961c0886076b5bf56cbd3",
         intel: "615768ad033b2abda8bd7e07e1c3b9d9ce6e5ddf921820496533a29c18777c9a"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg",
      verified: "github.com/simplex-chat/simplex-chat/"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "SimpleX.app"

  zap trash: "~/Library/Saved Application State/chat.simplex.app.savedState"
end
