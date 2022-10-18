cask "dmidiplayer" do
  version "1.7.0"
  sha256 "36735065d7f1bb27d2370d813554f3a9f2dcbef1d31f44298720bb4c45237615"

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
