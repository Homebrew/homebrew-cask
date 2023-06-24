cask "chatbox" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.6"
  sha256 arm:   "e54b26bea6739e2b395016c1ef212e75b1d0a792a08a4cef4122268812a467e1",
         intel: "7403cb9fb9484012d94e5c258fafa5d118a0d381edc0ad41c1e08ed9bd2f5ff3"

  url "https://github.com/Bin-Huang/chatbox/releases/download/v#{version}/chatbox_#{version}_#{arch}.dmg",
      verified: "github.com/Bin-Huang/chatbox/"
  name "chatbox"
  desc "Desktop app for GPT-4 / GPT-3.5 (OpenAI API)"
  homepage "https://chatboxapp.xyz/"

  auto_updates true

  app "chatbox.app"

  uninstall quit: "xyz.chatboxapp.app"

  zap trash: [
    "~/Library/Application Support/xyz.chatboxapp.app",
    "~/Library/Caches/xyz.chatboxapp.app",
    "~/Library/Preferences/xyz.chatboxapp.app.plist",
    "~/Library/Saved Application State/xyz.chatboxapp.app.savedState",
    "~/Library/WebKit/xyz.chatboxapp.app",
  ]
end
