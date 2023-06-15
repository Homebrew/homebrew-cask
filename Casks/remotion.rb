cask "remotion" do
  version "3.157.0"
  sha256 "eb2e45cd73091fddba57db966a6447adf7670a3f5389717711c01bfaa79ba49b"

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
