cask "flock-app" do
  version "2.2.527"
  sha256 "a3dbc3bcffcd54d5c909a9048b9d0738523654e424d4c28b8378c2e46dea6786"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/to.go.osx.sfl*",
    "~/Library/Application Support/Flock",
    "~/Library/Logs/Flock",
    "~/Library/Preferences/to.go.osx.plist",
    "~/Library/Saved Application State/to.go.osx.savedState",
  ]
end
