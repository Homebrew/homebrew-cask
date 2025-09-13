cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.5"
  sha256 arm:   "65fd90388fe3066898161c9c15837e30fc83a0dfccc45341d6b948782971d49b",
         intel: "1ea4f4c0fda0f836f2fd0a8a92c823cbc88468f4ff035575f734d18dd3439975"

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
