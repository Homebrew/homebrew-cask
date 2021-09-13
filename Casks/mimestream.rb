cask "mimestream" do
  version "0.28.0"
  sha256 "b33ffe46fe140a6b882c67a5ad3b9e66a7d6ca8aca6b2befaa011361c0bc1d30"

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
    "~/Library/Containers/com.mimestream.Mimestream",
  ]
end
