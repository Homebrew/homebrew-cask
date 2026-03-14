cask "midi-router-client" do
  version "2.19.0"
  sha256 "a51dff0bbfe489865cc4686e0b7ee1b0a45f8b3c0aa6a41274d35df75ff8077b"

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
