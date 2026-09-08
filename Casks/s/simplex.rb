cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.0.2"
  sha256 arm:   "c07fbdc37ad9dc5ca834784946a39df24df0719ed5e8aed301dc4322b37242a1",
         intel: "1ed38fcce09f886dbae46025f24f5e7aacf819500339968ebb8f8736fc23380d"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg"
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
