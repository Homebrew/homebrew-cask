cask "midi-router-client" do
  version "1.2.9"
  sha256 "36ccb9e4c22aaa88a13339289b2a7c5c41cb8d89809cb11aba695a4591c2ae07"

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
