cask "opensoundmeter" do
  version "1.2.1"
  sha256 "1efbe37cf03920c6fdf94c792520237693f577604f1404efbcea530255b56a47"

  url "https://github.com/psmokotnin/osm/releases/download/v#{version}/OpenSoundMeter.dmg",
      verified: "github.com/psmokotnin/osm/"
  name "Open Sound Meter"
  desc "Sound measurement application for tuning audio systems in real-time"
  homepage "https://opensoundmeter.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "OpenSoundMeter.app"

  zap trash: [
    "~/.config/opensoundmeter",
    "~/Library/Caches/OpenSoundMeter",
    "~/Library/Preferences/com.opensoundmeter.OpenSoundMeter.plist",
    "~/Library/Saved Application State/com.opensoundmeter.OpenSoundMeter.savedState",
  ]
end
