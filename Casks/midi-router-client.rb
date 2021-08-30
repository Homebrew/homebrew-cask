cask "midi-router-client" do
  version "1.2.5"
  sha256 "6b7b2a9b8d5c782902eb7808f6a9fcb143d9cea43ed1c72400788a5d554bd142"

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
