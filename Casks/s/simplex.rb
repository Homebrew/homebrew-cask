cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.4.4"
  sha256 arm:   "bb740780983be550984322e40a0a81d3de2b85ee8c5859bba02c188a883d73d0",
         intel: "49bd9bd265e3e2a12393b3db17bc89ef0b2e405c79de269f3c64e88148c2aa84"

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
