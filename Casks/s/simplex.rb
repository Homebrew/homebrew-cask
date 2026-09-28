cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "7.0.3"
  sha256 arm:   "296188f3c54f181d9e4c1e54a035d42788e92f11fed2f5399c705df69f09116e",
         intel: "8e7be5015dd8b3f96ef08c8752f99d7db517d8461b87db1ac56bd561414219e7"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "SimpleX.app"

  zap trash: "~/Library/Saved Application State/chat.simplex.app.savedState"
end
