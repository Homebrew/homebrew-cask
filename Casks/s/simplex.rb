cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.3.7"
  sha256 arm:   "c34c3532650a53b4821c86548789303fd86992ad5d2fd573dcb0a8dce9539fa0",
         intel: "5cee1b63c227de30569c392d3fa88b02b608fb182b8c61539a1ff465d6510c81"

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
