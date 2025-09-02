cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.4"
  sha256 arm:   "caa9bde6002b7a945d284f732874cc30a3e13828370e6af565240d6cd46b56bd",
         intel: "79dbadd371179c89a9bf8578d831bdcfba90c6e5914132eb50418c614ae905d7"

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
