cask "opensoundmeter" do
  arch arm: "arm", intel: "intel"

  version "1.5"
  sha256 arm:   "01f9051895bb1dfa32884228fb01a8f41850aae8f611d771314ec06b8f5f4c90",
         intel: "1f4d4b37c2e11baa24be954fe8c26cf19ceb2b3d0ed80581ab85fa29d97784c8"

  url "https://github.com/psmokotnin/osm/releases/download/v#{version}/OpenSoundMeter_#{arch}.dmg",
      verified: "github.com/psmokotnin/osm/"
  name "Open Sound Meter"
  desc "Sound measurement application for tuning audio systems in real-time"
  homepage "https://opensoundmeter.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "OpenSoundMeter.app"

  zap trash: [
    "~/.config/opensoundmeter",
    "~/Library/Caches/OpenSoundMeter",
    "~/Library/Preferences/com.opensoundmeter.OpenSoundMeter.plist",
    "~/Library/Saved Application State/com.opensoundmeter.OpenSoundMeter.savedState",
  ]
end
