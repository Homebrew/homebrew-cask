cask "google-chat" do
  version "20.11.241"
  sha256 "75821a29aebae89b92acc583129515a21788e7fdf6e62c7aa2b0cfcfeb748446"

  url "https://dl.google.com/chat/#{version}/InstallHangoutsChat.dmg"
  name "Chat"
  homepage "https://gsuite.google.com/products/chat/"

  livecheck do
    url "https://dl.google.com/chat/latest/InstallHangoutsChat.dmg"
    strategy :header_match
  end

  app "Chat.app"

  zap trash: [
    "~/Library/Application Support/Chat",
    "~/Library/Logs/Chat",
    "~/Library/Preferences/com.google.chat*",
    "~/Library/Saved Application State/com.google.chat.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
