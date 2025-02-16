cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.79"
  sha256 arm:   "781417286cd56a07fc3dcb743a518680c8f1215f73522ce8564eba5933c5cf38",
         intel: "8aa5fb12a53d3a946d5414b6caa010c5234319ed9ae8ce05d3c8382d9a5541a2"

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
