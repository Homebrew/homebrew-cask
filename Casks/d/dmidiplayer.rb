cask "dmidiplayer" do
  version "1.7.3"
  sha256 "b21833b052c0ecb5b3ed0e8393a99af7d30797bb7496a5ac92fcd7acf052262e"

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
