cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.23"
  sha256 arm:   "ebe9aa9e30ae4335bf2d2be219f09fcbed24e528f90e0ccb68d9b7dd307ea603",
         intel: "2c984c95429decd281c6156ec4ddd6d6c02922f8fe2a959ec6987b1781a70871"

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
