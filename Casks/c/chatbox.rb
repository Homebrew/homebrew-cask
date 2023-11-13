cask "chatbox" do
  arch arm: "-arm64"

  version "1.1.4"
  sha256 arm:   "4b69680d445929f50c31b20d2f56237a857ecc739171a8a5cf98d772b642c2a1",
         intel: "214eb73652230a2a597927529117731c9df132b5a356d170c6926711197c7992"

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
