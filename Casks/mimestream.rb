cask "mimestream" do
  version "0.35.3"
  sha256 "b3e66b8ae8119bc12500da681d7804bda75ffa43926b84059ac5423b947c2cf4"

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
    "~/Library/Preferences/com.mimestream.Mimestream.plist",
    "~/Library/Saved Application State/com.mimestream.Mimestream.savedState",
  ]
end
