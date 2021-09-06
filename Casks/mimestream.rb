cask "mimestream" do
  version "0.27.1"
  sha256 "4a5c1e2a90dd8272011c1ebd1af7acecb5de817909bf65e692e866393abef2f5"

  url "https://storage.googleapis.com/mimestream-releases/Mimestream_#{version}.dmg",
      verified: "storage.googleapis.com/mimestream-releases/"
  name "Mimestream"
  desc "Native app email client for Gmail"
  homepage "https://mimestream.com/"

  livecheck do
    url "https://mimestream.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Mimestream.app"

  zap trash: [
    "~/Library/Application Scripts/com.mimestream.Mimestream",
    "~/Library/Containers/com.mimestream.Mimestream",
  ]
end
