cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.3.4"
  sha256 arm:   "e2c11dd46d75fc05af37b3ece1320fbefbd58e6aa244c99636cef6165cf2ab43",
         intel: "01eafa1774bb7658f63b436f782e34d089ed57a0cb9cb000b9b08cca9de9b33d"

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
