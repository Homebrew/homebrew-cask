cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.1"
  sha256 arm:   "a468f212905d573a421878ac022d9ae8547755a1fa62b4b8bf1062b85f73c4fe",
         intel: "362666d08f6672032f9e7dc23dc8ba6f75f3b5940c1a8289a5e4ae6ff291b0bc"

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
