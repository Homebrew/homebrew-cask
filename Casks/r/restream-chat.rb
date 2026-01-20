cask "restream-chat" do
  version "2.6.7"
  sha256 "49b2d8493e4aaf84979a3fce2124fdcf27c9ebf61cb381a42934dffbe85ffa07"

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
