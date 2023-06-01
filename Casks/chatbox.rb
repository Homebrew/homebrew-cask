cask "chatbox" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "56a06949bca5d4b9a7953a7861dc86d22f7c46825d5bebf661aea9cbdb66b2ec",
         intel: "660b8c16170618bafb04ca7c8001a3bc1c205082dfac32c15e74d695b49560a4"

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
