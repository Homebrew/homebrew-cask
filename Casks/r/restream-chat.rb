cask "restream-chat" do
  version "2.8.1"
  sha256 "9d97fbc52c80ca2537e8f63cc718154ed1cce6a9c63fbe56e21713eb97fd4877"

  url "https://chat-client.restream.io/Restream+Chat-#{version}.dmg"
  name "Restream Chat"
  desc "Keep your streaming chats in one place"
  homepage "https://restream.io/chat/"

  livecheck do
    url "https://website-backend.restream.io/v2/public/chat/download/mac"
    strategy :header_match
  end

  depends_on :macos

  app "Restream Chat.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.restream.chat.sfl*",
    "~/Library/Application Support/Restream Chat",
    "~/Library/Logs/Restream Chat",
    "~/Library/Preferences/io.restream.chat.plist",
  ]

  caveats do
    requires_rosetta
  end
end
