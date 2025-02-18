cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.85"
  sha256 arm:   "5a4a0f8d1ca1c1896dc7ee6f7b8e6de13e921a4352037ee3f884e0b30afe2b88",
         intel: "e883bcb829f4b7a71faf852258287554332fbae43327e3ff91a7a4cd092cc326"

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
