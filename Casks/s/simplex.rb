cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.0.2"
  sha256 arm:   "416f63b3830d785f9bf6ad604654fb638f95d87c8ae8c4fc7122779ac09c3a7d",
         intel: "461fa6406efc4dca30f06f9c2365e2b1d963bd015f3ea94c55dc279ac24aa0a7"

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
