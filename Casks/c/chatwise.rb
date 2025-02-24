cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "31912b82042c04cc657132ad022079adf0dda125d9fa494e8d7b5427a52dd8f5",
         intel: "388613159df5e55d0c8dc275393e4fddfd9ef6e11fd4286699b48a46bd5db7ee"

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
