cask "cleanupbuddy" do
  version "1.1,10"
  sha256 "4b514cf7f52d3d749276c382323f8a16e3e07c278fe57cbdae26dfeb6c7f892e"

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
