cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.10"
  sha256 arm:   "6a091ce89ac7f7b79fb408fecd5bd8fa6bee6aa6581a391a5a88b4d36c65f16d",
         intel: "3b92d62c65ea3d2a896b7b0e69253cc3104dffa17c913ea320427f65ac62ff91"

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
