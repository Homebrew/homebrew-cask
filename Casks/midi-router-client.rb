cask "midi-router-client" do
  version "1.2.11"
  sha256 "8684c852a886622f144849840cbc6c568e13bf96b53c1c0cf9080c50bcc79c01"

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
