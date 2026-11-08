cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.1.2"
  sha256 arm:   "1d502b180ba1b58894d6705cd9737d7c0bc5a7d6490e51e7bc33f07a1252de80",
         intel: "490fee5466a0ed8871e2e9f3b324277e27b88c78cd68c182dd8910ebbd044579"

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
