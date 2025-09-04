cask "opensoundmeter" do
  arch arm: "arm", intel: "intel"

  version "1.5.1"
  sha256 arm:   "4061a65313a41e7020638e243c4d88ae3fa624e3d4d7d10ecb0998ad2f3b96c4",
         intel: "d6801de8c8c335ab1151507654643c1d9db53d3c2561cc4319d1f28b6f3a75ea"

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
