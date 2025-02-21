cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.2.5"
  sha256 arm:   "d5b63a41ab502ed695913fc7e7b5f14ef8bac2b5dc286b0394dadb53eebe1f78",
         intel: "fd7d4cc2da742dbcff5feba5b0827387dbffb5123da15228ba1aec4deb4e16e4"

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
