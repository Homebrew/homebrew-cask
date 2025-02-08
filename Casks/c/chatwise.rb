cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.57"
  sha256 arm:   "098d999a9b9439004f6fa9eb33602feff335ffe23f21be9002e3b93685746937",
         intel: "c73344d9730669cfac8f463a988ed5acdac3f5910163c540a27838b8a9e5b347"

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
