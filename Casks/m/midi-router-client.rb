cask "midi-router-client" do
  version "1.4.3"
  sha256 "69bc2d1dd0e34d447a276d0016caba4641bc24919ed5e1bdc3ce0c18b088c2c0"

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

  caveats do
    requires_rosetta
  end
end
