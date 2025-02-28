cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.9"
  sha256 arm:   "3c541c1021162d1707f41dffad12beecea8b62d02a8ce9bc99542f6b085a0eb7",
         intel: "98bdcaf49af13ac2d12a68d047b8dbc59ff4c54aecc97a43db607bf9289301ed"

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
