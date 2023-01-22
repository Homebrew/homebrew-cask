cask "opensoundmeter" do
  version "1.2.2"
  sha256 "572e3866b0e09c6f45b90b22651b1c0bec98e22a92c055eb8a629fe844fa766a"

  url "https://github.com/psmokotnin/osm/releases/download/v#{version}/OpenSoundMeter.dmg",
      verified: "github.com/psmokotnin/osm/"
  name "Open Sound Meter"
  desc "Sound measurement application for tuning audio systems in real-time"
  homepage "https://opensoundmeter.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
