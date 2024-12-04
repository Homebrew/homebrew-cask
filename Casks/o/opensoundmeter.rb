cask "opensoundmeter" do
  arch arm: "arm", intel: "intel"

  version "1.4"
  sha256 arm:   "050e334ab991386a9dedab8bad139922ec9cf3aeb4f0af065b5c2701f2dbb954",
         intel: "207e66d8bab2c432bed73684d1caaa5513276fe4fb7d52d1a65382b95b3458c4"

  url "https://github.com/psmokotnin/osm/releases/download/v#{version}/OpenSoundMeter_#{arch}.dmg",
      verified: "github.com/psmokotnin/osm/"
  name "Open Sound Meter"
  desc "Sound measurement application for tuning audio systems in real-time"
  homepage "https://opensoundmeter.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "OpenSoundMeter.app"

  zap trash: [
    "~/.config/opensoundmeter",
    "~/Library/Caches/OpenSoundMeter",
    "~/Library/Preferences/com.opensoundmeter.OpenSoundMeter.plist",
    "~/Library/Saved Application State/com.opensoundmeter.OpenSoundMeter.savedState",
  ]
end
