cask "chatbox" do
  arch arm: "-arm64"

  version "1.16.1"
  sha256 arm:   "2d2a231d5894f5742390cef4d721f160fc204d71d61aaa35949b9aea3a95342e",
         intel: "c51735f444c6ab96f955821e370a74e349ccd42cb94d5f90ff6182c7bac54a57"

  url "https://download.chatboxai.app/releases/Chatbox-#{version}#{arch}.dmg"
  name "Chatbox"
  desc "Desktop app for GPT-4 / GPT-3.5 (OpenAI API)"
  homepage "https://chatboxai.app/en"

  livecheck do
    url "https://download.chatboxai.app/releases/latest-mac.yml"
    strategy :electron_builder
  end

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
