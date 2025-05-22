cask "cleanupbuddy" do
  version "1.2,13"
  sha256 "2ccce9488ab13bcebd494d7085546ff826739f86dd7183ce900b03ef92119570"

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
