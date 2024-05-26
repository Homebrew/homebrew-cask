cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.7.4"
  sha256 arm:   "dd6c131dff4934ea98d248701b4f2fe67f7735e5c959210d4964ce5ffa5d26fc",
         intel: "0135156d72d524f5a3fb77a266fd2b1ee87da33815515274add6ddfe43721ba6"

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
