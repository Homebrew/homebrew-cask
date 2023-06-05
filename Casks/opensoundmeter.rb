cask "opensoundmeter" do
  version "1.2.3"
  sha256 "b4de2eaabb8d65d918f47b92a65476f579117c14f9851ce91df31a71b41bc81c"

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
