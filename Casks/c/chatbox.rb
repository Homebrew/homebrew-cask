cask "chatbox" do
  arch arm: "-arm64"

  version "1.2.0"
  sha256 arm:   "c5500762b7f13bbdeb183edc044291a9e23fc8c75a10c599102f7b4c5d01416b",
         intel: "83be24c84bd20f88a5bffa9dbc9b9f84405b7a85ed6f7aa66b717236cacae06b"

  url "https://github.com/Bin-Huang/chatbox/releases/download/v#{version}/Chatbox-#{version}#{arch}.dmg",
      verified: "github.com/Bin-Huang/chatbox/"
  name "chatbox"
  desc "Desktop app for GPT-4 / GPT-3.5 (OpenAI API)"
  homepage "https://chatboxapp.xyz/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
