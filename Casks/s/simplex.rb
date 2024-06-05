cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.8.0"
  sha256 arm:   "62737ec91ba421ca761b5c39d81d7d4cfe198d7331353edfa6ac219e7d8866f5",
         intel: "721ffb4e97c3d1a1122b2d02184790fadb2333f452c1c96f76ec2eeeb8f5afb1"

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
