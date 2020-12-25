cask "google-chat" do
  version "20.9.281"
  sha256 "6cff1d7d42bf130e052cdbd8fd0d5c1e9b4b60ab872c26a4b8944f28c88c8e68"

  url "https://dl.google.com/chat/#{version}/InstallHangoutsChat.dmg"
  name "Chat"
  homepage "https://gsuite.google.com/products/chat/"

  livecheck do
    url "https://dl.google.com/chat/latest/InstallHangoutsChat.dmg"
    strategy :header_match
  end

  app "Chat.app"

  zap trash: [
    "~/Library/Logs/Chat",
    "~/Library/Saved Application State/com.google.chat.savedState",
    "~/Library/Application Support/Chat",
    "~/Library/Preferences/com.google.chat*",
  ]
end
