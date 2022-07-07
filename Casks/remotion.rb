cask "remotion" do
  version "1.85.0"
  sha256 "cd7148c9144fbf5ec94bb231525bd1196b2b7d77a9176b6e44baf288a190b40d"

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
