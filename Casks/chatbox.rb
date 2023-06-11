cask "chatbox" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "699f056f640217b7a4cac34ffa0a077ff97a20355e0ab9a5ce8fc6547d68d3c2",
         intel: "73621cba006504c1a7f3532c0b079a3906054c8f1635075fcb7ce4a59e4517e3"

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
  ]
end
