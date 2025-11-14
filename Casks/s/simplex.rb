cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.7"
  sha256 arm:   "2a13d02f400b2f6364d43fd63f593e6ed5eccc4f015d94d514344f6d78a3e3bf",
         intel: "a3bf966ce065a7f88a512e3cb87c95033a52b49cb1d16ee60257a23f392414e9"

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg",
      verified: "github.com/simplex-chat/simplex-chat/"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SimpleX.app"

  zap trash: "~/Library/Saved Application State/chat.simplex.app.savedState"
end
