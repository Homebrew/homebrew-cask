cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.7"
  sha256 arm:   "322529609e3ede4d86efda297991d665be3be35d338a32f9ea1dcde50c17f59d",
         intel: "2ebe18b8d10c5b5bb00598fa1a7f118d5f58adf2cefb5e2c2939ed9451f95b96"

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
