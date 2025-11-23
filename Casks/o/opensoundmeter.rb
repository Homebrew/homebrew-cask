cask "opensoundmeter" do
  arch arm: "arm", intel: "intel"

  version "1.5.2"
  sha256 arm:   "ce076c369c45175d9841c69dbb1aebfebf4c85568c2dcf37f3d6ad7f804a2a9c",
         intel: "9fba53e2530cca4b7c46d5ed5e576bcfff59e4a27d85d7d28b017ce71defe7d4"

  url "https://github.com/psmokotnin/osm/releases/download/v#{version}/OpenSoundMeter_#{arch}.dmg",
      verified: "github.com/psmokotnin/osm/"
  name "Open Sound Meter"
  desc "Sound measurement application for tuning audio systems in real-time"
  homepage "https://opensoundmeter.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenSoundMeter.app"

  zap trash: [
    "~/.config/opensoundmeter",
    "~/Library/Caches/OpenSoundMeter",
    "~/Library/Preferences/com.opensoundmeter.OpenSoundMeter.plist",
    "~/Library/Saved Application State/com.opensoundmeter.OpenSoundMeter.savedState",
  ]
end
