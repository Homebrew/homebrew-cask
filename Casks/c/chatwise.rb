cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.12"
  sha256 arm:   "e5dd93397404ce11669d0a123ba804899fb1f032f5de90f45811823102bee8d3",
         intel: "9c2bb100a0ca34ac581ab11e1ee9ef05fb55ba81079d41f4afc429664df591b7"

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
