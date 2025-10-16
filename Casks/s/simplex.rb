cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.6"
  sha256 arm:   "5aeada6adc0a7511889401b0c4de61c175010a4dfbf312933543786d50096c9d",
         intel: "a1ac09ec931239e6002fcd39f7aa61f1b2a9a8b084c1b1990307428b15babaa3"

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
