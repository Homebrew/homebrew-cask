cask "dmidiplayer" do
  version "1.5.2"
  sha256 "1f96beab927b75a0065f09720269db0bc61401a7674c359be9f06bdf9a76826a"

  url "https://downloads.sourceforge.net/dmidiplayer/#{version}/dmidiplayer-#{version}-mac-x64.dmg",
      verified: "downloads.sourceforge.net/dmidiplayer/"
  name "dmidiplayer"
  desc "Multiplatform MIDI File Player"
  homepage "https://dmidiplayer.sourceforge.io/"

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
