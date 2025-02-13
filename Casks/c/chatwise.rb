cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.72"
  sha256 arm:   "a49be7b50b4893026b7cc26143d3c303dd485823898c4b3b8e74440c6dd6ea9d",
         intel: "b5f7afe16af46c9b50d04fc869af61d085b46d24daca8472d19ed7b31b242dd7"

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
