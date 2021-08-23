cask "mimestream" do
  version "0.26.2"
  sha256 "0644cbb3d97b8b9a00bc31013a559a607e52a102e1d3e8a72b7f2dfe76583cd3"

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
