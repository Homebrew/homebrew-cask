cask "mimestream" do
  version "0.34.2"
  sha256 "b3323c90f5656baf6e7e5fa0ef2e8a10ea10786554a6bbd36e4591ddda4d3190"

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
