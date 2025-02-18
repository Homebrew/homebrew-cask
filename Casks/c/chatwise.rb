cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.86"
  sha256 arm:   "70e1957bb6021fcb94878d4d1cd54b172c1bcfd687d0f611b73a32153358f023",
         intel: "9a7fc9357022142f41ba603c93ed28216bba4e3b68009494a0e52f93725470ad"

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
