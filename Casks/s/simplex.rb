cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.7.0"
  sha256 arm:   "babd7019c7dc840560c4c19efef7f9d321971eae3ef8d2033016d966e39d000d",
         intel: "b8a5434384124741491ae3e762f34b7d36aa62925cb13ec038a57cc56dc997f4"

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
