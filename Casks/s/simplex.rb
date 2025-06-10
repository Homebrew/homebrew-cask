cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.3.5"
  sha256 arm:   "a6f2dbe0b62270a65563f2899148841e768a14f8c36ce572aba0ea2d73493fb8",
         intel: "edfe63e48c2f020e889f715a9fc76734ca5c70ae279677cae45c2f286ef8af1d"

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
