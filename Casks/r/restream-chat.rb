cask "restream-chat" do
  version "2.7.0"
  sha256 "0aaea4b2d41a60d7b4a84579a432f48b6e39fccfb0693f77e2fa172c518bbe94"

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

  caveats do
    requires_rosetta
  end
end
