cask "restream-chat" do
  version "2.5.4-beta"
  sha256 "32b4dae6cdce145b1f6a43b5046636bfa2188c924d792b21337c9604d3dc1809"

  url "https://chat-client.restream.io/Restream+Chat-#{version}.dmg"
  name "Restream Chat"
  desc "Keep your streaming chats in one place"
  homepage "https://restream.io/chat/"

  livecheck do
    url "https://website-backend.restream.io/v2/public/chat/download/mac"
    strategy :header_match
  end

  app "Restream Chat.app"

  zap trash: "~/Library/Application Support/Restream Chat"
end
