cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.0"
  sha256 arm:   "6748eb1bef718b240a9bf9997d7e488bb7c52eee47472daca4ff7aec7bf53678",
         intel: "a661186b723e406c6d3d2e72f70dc90559ff6f53a5b5a598521376e0c750aaf0"

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
