cask "chatbox" do
  arch arm: "-arm64"

  version "0.6.8"
  sha256 arm:   "13dfba6137a67fc871b2d008d54e8b3b675dc347ac0c1b1239228f5b3a622e7b",
         intel: "648040029a90c785ff40a188bc7a088477d14acb04ab57131368805ef22fb343"

  url "https://github.com/Bin-Huang/chatbox/releases/download/v#{version}/Chatbox-#{version}#{arch}.dmg",
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
