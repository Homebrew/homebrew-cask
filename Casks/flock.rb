cask "flock" do
  version "2.2.507"
  sha256 "2aa1f906d5dcdba7bba34e66841f470814b2ff305335ec07d1fc610a9f4d4b29"

  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg",
      verified: "flock.co/"
  name "Flock"
  desc "Business messaging and team collaboration app"
  homepage "https://flock.com/"

  livecheck do
    url "https://bingo.flock.co/dl.php?client=mac"
    strategy :header_match
  end

  app "Flock.app"

  zap trash: [
    "~/Library/Application Support/Flock",
    "~/Library/Logs/Flock",
    "~/Library/Preferences/to.go.osx.plist",
    "~/Library/Saved Application State/to.go.osx.savedState",
  ]
end
