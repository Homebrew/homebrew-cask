cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.3.6"
  sha256 arm:   "4c4bc6287a45065db213d4a1202102996fc03ca8e114128f259fb18303d2148c",
         intel: "f9ae65649c2f28edd5e228137bc2d86b55d4236f803ac802946321fc96f449c2"

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
