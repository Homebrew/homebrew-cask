cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.2"
  sha256 arm:   "fa73436b73b6c9ff50b7280fa2d428ba5abf37d027d5f2514ce12bac38028ae2",
         intel: "b07f069c229bf18a154cf6835a494501d02592b5e801961e00b27468c9020a94"

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
