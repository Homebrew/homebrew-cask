cask "midi-router-client" do
  version "2.18.0"
  sha256 "7365ac1c9651f6139cef42d9332caa24b983d497c26a790f4a108dbcbbfabeda"

  url "https://downloads.sourceforge.net/midi-router-client/midi-router-client-#{version}-Darwin.dmg"
  name "Midi Router Client"
  desc "Create routes from anywhere to anywhere"
  homepage "https://sourceforge.net/projects/midi-router-client/"

  livecheck do
    url :url
    regex(%r{url=.*?/midi-router-client[._-]v?(\d+(?:\.\d+)+)[._-]Darwin\.(?:dmg|zip)}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :tahoe"

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
