cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.24"
  sha256 arm:   "5ff63df2f6b022e891832c174218b80affbd992cf6c518df49619152c266cfd2",
         intel: "3ea5a65f075e8b4a26cc732bad4bff5b88728470d5e29ef511b342451681acfa"

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
