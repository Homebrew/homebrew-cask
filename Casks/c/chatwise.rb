cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "49cfdc220f4517477e4c733bdfaf5f455321cbac18c59655707bc4c1a6721e2f",
         intel: "bbc217f073e06335d27f61b0238345ecd265af78629c0293776de19a14c7dc09"

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
