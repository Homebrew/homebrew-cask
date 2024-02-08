cask "opensoundmeter" do
  arch arm: "arm", intel: "intel"

  version "1.3"
  sha256 arm:   "98c8c301890af8f2d6a3d4e12c3a1eae45f19a5b558eb8e7c60b0839953a15f8",
         intel: "41f6ef5b98fc4b8fd5f231fdf936e58fa65072fe7f293ae9db597886e5f9e279"

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
