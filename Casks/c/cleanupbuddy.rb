cask "cleanupbuddy" do
  version "1.3.1,15"
  sha256 "d64b1a2567612da30c8e6a902ae4ae215da7cfb4261f187f46957409429535ba"

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
