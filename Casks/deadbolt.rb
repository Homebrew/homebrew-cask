cask "deadbolt" do
  version "0.1.0"
  sha256 "c302f1c532082b200d844d17cd8feadc61821d97591fb5a0dbb1bb97c3a5981b"

  url "https://github.com/alichtman/deadbolt/releases/download/#{version}/Deadbolt-#{version}.dmg"
  appcast "https://github.com/alichtman/deadbolt/releases.atom"
  name "Deadbolt"
  homepage "https://github.com/alichtman/deadbolt"

  app "Deadbolt.app"

  zap trash: [
    "~/Library/Application Support/deadbolt",
    "~/Library/Preferences/org.alichtman.deadbolt.plist",
    "~/Library/Saved Application State/org.alichtman.deadbolt.savedState",
  ]
end
