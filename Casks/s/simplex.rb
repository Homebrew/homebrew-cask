cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.5.0"
  sha256 arm:   "5853366d068ad693a799b80bb735e2bf42fec030ddfd3637391fb002cf998f45",
         intel: "34aaa134d24eb63a35aa2454f43a941869966877e9e78a33a25e857aae3cb2b1"

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
