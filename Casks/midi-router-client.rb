cask "midi-router-client" do
  version "1.2.7"
  sha256 "68bbd17ce1c72f15b11d92dbe62d1af9dce723618c8d3620eb4425921e9307f6"

  url "https://downloads.sourceforge.net/midi-router-client/releaseOSX11_#{version}.zip"
  name "Midi Router Client"
  desc "Create routes from anywhere to anywhere"
  homepage "https://sourceforge.net/projects/midi-router-client/"

  app "releaseOSX11_#{version}/Midi router client.app"
  app "releaseOSX11_#{version}/Midi router server.app"

  zap trash: [
    "~/Library/Application Support/Midi router client",
    "~/Library/Caches/midi-router-client",
    "~/Library/Preferences/com.electron.midi-router-client.helper.plist",
    "~/Library/Preferences/com.electron.midi-router-client.plist",
    "~/Library/Preferences/com.shemeshg.MidiRouter.plist",
  ]
end
