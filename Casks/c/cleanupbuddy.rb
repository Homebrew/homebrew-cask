cask "cleanupbuddy" do
  version "2.0,26"
  sha256 "cf9bbae06386bfa2f67ad42e03a2546e43c89a37adebf2599b2efa9566a6c3ef"

  url "https://sparkle.cleanupbuddy.app/CleanupBuddy_v#{version.csv.first}-#{version.csv.second}.dmg"
  name "CleanupBuddy"
  desc "Clean keyboard and trackpad"
  homepage "https://cleanupbuddy.app/"

  livecheck do
    url "https://sparkle.cleanupbuddy.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "CleanupBuddy.app"

  zap trash: [
    "~/Library/Application Support/CleanupBuddy",
    "~/Library/HTTPStorages/codes.rambo.CleanupBuddy",
    "~/Library/Preferences/codes.rambo.CleanupBuddy.plist",
    "~/Library/Saved Application State/codes.rambo.CleanupBuddy.savedState",
  ]
end
