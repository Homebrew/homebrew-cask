cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.4.1"
  sha256 arm:   "d32443ce908968d018bb0ebb2c2e3a749150a9f5d19e40eac9242b4c77aa9ad7",
         intel: "6b387fe27bd289efe20400efad3b662e7957da81c32540180d09faf0327fee5b"

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
