cask "cleanupbuddy" do
  version "1.3,14"
  sha256 "1d593c9cd19f07da1553bef3b2a4934ccced9255123a2a9b8934829407bf4325"

  url "https://sparkle.cleanupbuddy.app/CleanupBuddy_v#{version.csv.first}-#{version.csv.second}.dmg"
  name "CleanupBuddy"
  desc "Clean keyboard and trackpad"
  homepage "https://cleanupbuddy.app/"

  livecheck do
    url "https://sparkle.cleanupbuddy.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "CleanupBuddy.app"

  zap trash: [
    "~/Library/HTTPStorages/codes.rambo.CleanupBuddy",
    "~/Library/Preferences/codes.rambo.CleanupBuddy.plist",
    "~/Library/Saved Application State/codes.rambo.CleanupBuddy.savedState",
  ]
end
