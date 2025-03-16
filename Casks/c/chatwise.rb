cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "e52eeaae918a790c835c5d2c596b3e6ae5f7fc136683a6f14a00abe35a186108",
         intel: "abf19d0e748077865ebae0ee9850ef9241b4e1ce35ce415489c199717f48d2e7"

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
