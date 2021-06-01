cask "dmidiplayer" do
  version "1.3.1"
  sha256 "07fd2d2b2b31a5ecfac53aa834a9c5e408bc7a548bcb7095825916b5d35d0779"

  url "https://downloads.sourceforge.net/dmidiplayer/v#{version}/dmidiplayer-#{version}-mac-x64.dmg",
      verified: "downloads.sourceforge.net/dmidiplayer/"
  name "dmidiplayer"
  desc "Multiplatform MIDI File Player"
  homepage "https://dmidiplayer.sourceforge.io/"

  depends_on formula: "fluid-synth"
  depends_on macos: ">= :sierra"

  app "dmidiplayer.app"

  zap trash: [
    "~/Library/Preferences/net.sourceforge.dmidiplayer.plist",
    "~/Library/Preferences/net.sourceforge.drumstick.Drumstick MIDI File Multiplatform Player.plist",
    "~/Library/Saved Application State/net.sourceforge.dmidiplayer.savedState",
  ]
end
