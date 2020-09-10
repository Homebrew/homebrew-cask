cask "google-chat" do
  version "20.8.301"
  sha256 "186d8d556b3890c5ee12ff98fa3ee6ed513c48c063dfd03a4ef90b53ce7ba4fe"

  url "https://dl.google.com/chat/#{version}/InstallHangoutsChat.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dl.google.com/chat/latest/InstallHangoutsChat.dmg"
  name "Chat"
  homepage "https://gsuite.google.com/products/chat/"

  app "Chat.app"

  zap trash: [
    "~/Library/Logs/Chat",
    "~/Library/Saved Application State/com.google.chat.savedState",
    "~/Library/Application Support/Chat",
    "~/Library/Preferences/com.google.chat*",
  ]
end
