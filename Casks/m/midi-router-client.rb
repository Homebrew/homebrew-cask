cask "midi-router-client" do
  version "2.3.0"
  sha256 "53398da035753d3e240167aa31e9524d70444d3e27ae034240a460e8176ffb0a"

  url "https://downloads.sourceforge.net/midi-router-client/midi-router-client-#{version}-Darwin.dmg"
  name "Midi Router Client"
  desc "Create routes from anywhere to anywhere"
  homepage "https://sourceforge.net/projects/midi-router-client/"

  disable! date: "2026-09-01", because: :unsigned

  app "midi-router-client.app"

  zap trash: [
    "~/Library/Application Support/Midi router client",
    "~/Library/Caches/midi-router-client",
    "~/Library/Preferences/com.electron.midi-router-client.helper.plist",
    "~/Library/Preferences/com.electron.midi-router-client.plist",
    "~/Library/Preferences/com.shemeshg.MidiRouter.plist",
    "~/Library/Preferences/com.shemeshg.midirouterclient.midi-router-client.plist",
  ]
end
