cask "remotion" do
  version "1.93.1"
  sha256 "2465876299d2807e847a03203b95e0a3f245ca1d3f4a20d070b73b600f11836d"

  url "https://updates.remotion.com/installers/Remotion%20#{version}.dmg"
  name "remotion"
  desc "Communication tool for remote teams"
  homepage "https://www.remotion.com/"

  livecheck do
    url "https://updates.remotion.com/latest"
    strategy :header_match
  end

  app "Remotion.app"

  zap trash: [
    "~/Library/Application Support/Remotion",
    "~/Library/Caches/com.remotion.remotion",
    "~/Library/Preferences/com.remotion.remotion.plist",
  ]
end
