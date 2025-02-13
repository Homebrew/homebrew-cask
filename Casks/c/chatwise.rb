cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.70"
  sha256 arm:   "05baf3a4178760e11c223a26a5743aee0b5972dc0cf05cd60c3c2a466a8fe557",
         intel: "8a335a3c53f00d7cfaf026422128237d760828a802cdb6ca7dde6edda76520ee"

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
