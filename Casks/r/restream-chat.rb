cask "restream-chat" do
  version "2.6.8"
  sha256 "a466ad75d60231b66a64b765f742e8ff5d55a1bb5a5f940500fa6df4dead21d4"

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
