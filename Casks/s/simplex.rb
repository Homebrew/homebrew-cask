cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.4.3"
  sha256 arm:   "4bfc2a75b7d94dac6f2d0a159960d3fdbfca7ff0e4f49e0dc595bdb526d60407",
         intel: "7e615ec4b0fca25266d5e4c578449bf03bfa0ad9739a550dc0d408122571b584"

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
