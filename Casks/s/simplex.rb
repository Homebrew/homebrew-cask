cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.5.2"
  sha256 arm:   "17503b209572eb05fb951af4839e92a727b52a047693d2d3806016b83a8c76bb",
         intel: "f2b6e8572c374d72c15089c2de5dd2ae46f67baf2cfdbac6fbe634025b56e9a0"

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
