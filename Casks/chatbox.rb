cask "chatbox" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "8844d9d43358c662edf16c444409969af106810032c2eed9df572f6190f4ba38",
         intel: "b11af03f701883492986806fb8952e123e1c1f24fba7efbdd281aa5a323afe7a"

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
