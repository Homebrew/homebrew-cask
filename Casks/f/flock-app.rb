cask "flock-app" do
  version "2.2.526"
  sha256 "3ed88e7134a86b744715221237454cdb2097bddb6c77fb6adae3485f25b51ceb"

  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  name "Flock"
  desc "Business messaging and team collaboration app"
  homepage "https://flock.com/"

  livecheck do
    url "https://bingo.flock.co/dl.php?client=mac"
    strategy :header_match
  end

  depends_on macos: :monterey

  app "Flock.app"

  zap trash: [
    "~/Library/Application Support/Flock",
    "~/Library/Logs/Flock",
    "~/Library/Preferences/to.go.osx.plist",
    "~/Library/Saved Application State/to.go.osx.savedState",
  ]
end
