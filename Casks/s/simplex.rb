cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.2.3"
  sha256 arm:   "e1e33b76a12f2da9682a56626b2d2c0993d746e924401bff7e913226d314a62f",
         intel: "ce8955f86e5c42389f399e36870ccc83bfc77ad6fe8f3a4c38b8d306a4fc4807"

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
