cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.19"
  sha256 arm:   "c96a2d8689dd2c5b866a37ece99e7985865e5f09c54ef68534e0e270aa52ed53",
         intel: "b9960456e90b7f79d76bfd910ce7cb4798192d015ae6853e03b6a31c7334c623"

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
