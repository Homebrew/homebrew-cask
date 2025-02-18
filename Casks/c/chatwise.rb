cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.87"
  sha256 arm:   "87696d2515aa4c345911c8b01b0940b7d4bcf71f49a6a3cc6df3ab6e72f19ad5",
         intel: "8d1c739203a6a3cb8a3945b1af407a724ba10a103dba65744159da6fa3299b8a"

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
