cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.0.1"
  sha256 arm:   "5ab36495de49c229903d7a3135956fc5ab309875c5384c9a3dcd6ec9b1990d3f",
         intel: "ea26747583ce6f23e8c69c302fe4f4ac53d242be28933382932560decc1f0d0b"

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
