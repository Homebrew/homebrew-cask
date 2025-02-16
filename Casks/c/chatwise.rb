cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.80"
  sha256 arm:   "991c2be6e80318ec233f7034eaa2aee12f47178e8be104c941597c6368c1ec8d",
         intel: "d59b15372a68bc680e0fb577d28814d795fe7382ed3d8710a37dd01ab1447aa5"

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
