cask "mimestream" do
  version "0.32.1"
  sha256 "8a1ab44277eb21ba34a832a559e1830f46e33444a271361157b05a29f0126d9f"

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
    "~/Library/Caches/com.mimestream.Mimestream",
    "~/Library/Containers/com.mimestream.Mimestream",
    "~/Library/Saved Application State/com.mimestream.Mimestream.savedState",
  ]
end
