cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.8"
  sha256 arm:   "d2e9b5756bb969513df918321a022a39e396dd5cbda8a288848eb73033e83822",
         intel: "32dd0b60beb2ef834d3e0a18f74da4a6352a3eb3b454b4923edaeff597ec1b7b"

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
