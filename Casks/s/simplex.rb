cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.0.3"
  sha256 arm:   "d928a196f62fe08194c2d12b35bd821eb46fac93e41e0b13e7bde05d26995283",
         intel: "c0eb8e6f56268edb2306f937766b9c71b51d79d2738734392590f557c561b86c"

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
