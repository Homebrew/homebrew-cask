cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.62"
  sha256 arm:   "ec2df90f782e4ab0cca009b153c4506eee3c3c107fd241f53590b11e625eab82",
         intel: "acaed54983d235fdb91b7b1623390af140c0f11c3109e6074e2bd48ee4001f5e"

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
