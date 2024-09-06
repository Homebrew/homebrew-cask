cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.0.4"
  sha256 arm:   "95001afab3dda21d0842d9cd457bb0f010c8153460f5e32e71bb68177282192c",
         intel: "e5b10b2639badd94f0e63c55866036585eda51b222ad949004c86656f28884b8"

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
