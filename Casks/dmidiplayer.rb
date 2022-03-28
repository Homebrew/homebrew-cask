cask "dmidiplayer" do
  version "1.5.1"
  sha256 "48a22c73143dc7fb57ea9de19e9ecb03d32a88c33fbf6e44f071b3a129f113a5"

  url "https://downloads.sourceforge.net/dmidiplayer/#{version}/dmidiplayer-#{version}-mac-x64.dmg",
      verified: "downloads.sourceforge.net/dmidiplayer/"
  name "dmidiplayer"
  desc "Multiplatform MIDI File Player"
  homepage "https://dmidiplayer.sourceforge.io/"

  livecheck do
    url :url
    regex(%r{url=.*?/dmidiplayer[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
  end

  depends_on formula: "fluid-synth"
  depends_on macos: ">= :sierra"
  depends_on arch: :x86_64

  app "dmidiplayer.app"

  zap trash: [
    "~/Library/Preferences/net.sourceforge.dmidiplayer.plist",
    "~/Library/Preferences/net.sourceforge.drumstick.Drumstick MIDI File Multiplatform Player.plist",
    "~/Library/Saved Application State/net.sourceforge.dmidiplayer.savedState",
  ]
end
