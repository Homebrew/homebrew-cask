cask "restream-chat" do
  version "2.7.1"
  sha256 "e3cfb00f13c0c75667ae66cb5cf2615ea2a5a66b3d22f43aa25cfdb476a9533f"

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

  zap trash: "~/Library/Application Support/Restream Chat"

  caveats do
    requires_rosetta
  end
end
