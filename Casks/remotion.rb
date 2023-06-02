cask "remotion" do
  version "3.152.0"
  sha256 "9f994329e0187e21d8b2fd1ba955e754a017589e8713c5e073ae6376c3f7e134"

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
