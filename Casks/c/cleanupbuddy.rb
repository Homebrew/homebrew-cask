cask "cleanupbuddy" do
  version "1.0"
  sha256 :no_check

  url "https://sparkle.cleanupbuddy.app/CleanupBuddy-latest.dmg"
  name "CleanupBuddy"
  desc "Clean keyboard and trackpad"
  homepage "https://cleanupbuddy.app/"

  livecheck do
    url "https://sparkle.cleanupbuddy.app/appcast.xml"
    strategy :sparkle, &:short_version
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
