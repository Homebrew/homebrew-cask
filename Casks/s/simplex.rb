cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.5.3"
  sha256 arm:   "f210e79e6a642576de4b7684b91122ebb8258a1e7df8bb8af24cf16b1f644fde",
         intel: "63d38f04a63763ea164057aa7c6d1224509e25e6c29d3e0e75254859d25b3a68"

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
