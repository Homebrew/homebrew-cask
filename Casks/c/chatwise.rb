cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.33"
  sha256 arm:   "d5cd9baadc770d24db077c87a9ec402cc11cb866513c16ed1be0b4d760f59258",
         intel: "4ede6d65cce569c641c0082b5d67605ca41ceff06f3d4c2cfebda937b4046977"

  url "https://github.com/egoist/chatwise-releases/releases/download/v#{version}/ChatWise_#{version}_#{arch}.dmg",
      verified: "github.com/egoist/chatwise-releases/"
  name "ChatWise"
  desc "AI chatbot for many LLMs"
  homepage "https://chatwise.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "ChatWise.app"

  uninstall quit: "app.chatwise"

  zap trash: [
    "~/Library/Application Support/app.chatwise",
    "~/Library/Caches/app.chatwise",
    "~/Library/Saved Application State/app.chatwise.savedState",
    "~/Library/WebKit/app.chatwise",
  ]
end
