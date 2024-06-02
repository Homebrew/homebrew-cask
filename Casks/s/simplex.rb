cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.7.5"
  sha256 arm:   "7eb3ce28c214666417cceafaec210a56b514fc7ef7ecefd353cea5a70340846f",
         intel: "67b905d1a42d1d44e713e61a2022612ad729cb2df012cdded02444eeb384f284"

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
