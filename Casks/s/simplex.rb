cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.8.2"
  sha256 arm:   "870f97f3b11c319df44439332e5b6392dd846f70ee74e72adaa67c4bb5bcda30",
         intel: "b857d948445159c333a82628bb65f547fdb49a273454aeb2759bf64e59b4870e"

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
