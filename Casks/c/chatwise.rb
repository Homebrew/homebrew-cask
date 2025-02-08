cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.56"
  sha256 arm:   "47cfeed6eacde1b4b29c71a3a04e0ee57fa63de104685c30c63d21e8f24bc5d8",
         intel: "dc334b28a9b4636481889d68d7ebb09a86ff96935e2117f7ceb0c8c75de66ff7"

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
