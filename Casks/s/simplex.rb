cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.5.2"
  sha256 arm:   "43be2469dcfb06bb165cbffbfb3445d43e647a90c9a94da4fb34ed844e3bc08d",
         intel: "99e059405f028ce321156e1f379441867aa5e75a8edafbea6971a9157494f50d"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg",
      verified: "github.com/simplex-chat/simplex-chat/"
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
