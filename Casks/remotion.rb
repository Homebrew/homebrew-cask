cask "remotion" do
  version "1.97.1"
  sha256 "f9b3dc5fc92afb07c0a2a553baf4062f93839f4b2eb247001a111149114b5e35"

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
