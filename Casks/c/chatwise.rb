cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.6"
  sha256 arm:   "98fcd49fc336395c4cd731c1d5c0346ce9ed033eccb5720753fcacbfae013bec",
         intel: "85304ac476e6aa9e63ff37f84918680c0c50eaff5ab76cee28d12e9b14504bb8"

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
