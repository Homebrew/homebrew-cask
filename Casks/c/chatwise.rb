cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.17"
  sha256 arm:   "0542eafddd84dbe226f7fa7cbda6d4d2ab8539d5a9e22378472d6bcdf817a41b",
         intel: "bdc56437b8010f1654253cd0750435503fbf5738bac33b052dc08f1a49b77105"

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
