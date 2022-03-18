cask "mimestream" do
  version "0.34.1"
  sha256 "886657e0cafa165a50fc8d928d116919431f6f9709f25277cb04f8b1c801fe40"

  url "https://storage.googleapis.com/mimestream-releases/Mimestream_#{version}.dmg",
      verified: "storage.googleapis.com/mimestream-releases/"
  name "Mimestream"
  desc "Native app email client for Gmail"
  homepage "https://mimestream.com/"

  livecheck do
    url "https://mimestream.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Mimestream.app"

  zap trash: [
    "~/Library/Application Scripts/com.mimestream.Mimestream",
    "~/Library/Application Scripts/com.mimestream.Mimestream.ShareExtension",
    "~/Library/Caches/com.mimestream.Mimestream",
    "~/Library/Containers/com.mimestream.Mimestream",
    "~/Library/Containers/com.mimestream.Mimestream.ShareExtension",
    "~/Library/Saved Application State/com.mimestream.Mimestream.savedState",
  ]
end
