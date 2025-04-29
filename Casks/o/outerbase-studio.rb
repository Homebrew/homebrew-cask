cask "outerbase-studio" do
  version "0.1.29"
  sha256 "0d1345573e15296285f8fb3fb0c8bb3b617afe55e2beaef73c87f1f338f976a3"

  url "https://github.com/outerbase/studio-desktop/releases/download/v#{version}/outerbase-mac-#{version}.dmg"
  name "Outerbase Studio Desktop"
  desc "Database GUI"
  homepage "https://github.com/outerbase/studio-desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Outerbase Studio.app"

  zap trash: [
    "~/Library/Application Support/outerbase-studio-desktop",
    "~/Library/Logs/outerbase-studio-desktop",
    "~/Library/Preferences/com.outerbase.studio.plist",
  ]
end
