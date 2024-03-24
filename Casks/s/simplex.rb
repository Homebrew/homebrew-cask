cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.6.0"
  sha256 arm:   "f57e70297457ec330279b4766c70c7b9a35ce648326bd911baabb36cb8c984f2",
         intel: "c88e11230822993d823f0a7a0b71c6d5bdfca78758e9c9500e1883c03430968b"

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
