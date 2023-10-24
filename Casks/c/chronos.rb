cask "chronos" do
  version "6.3.0"
  sha256 "a505965020e15f7a961cf29b5160dddf7f7d4df69dda32e8ed1f8b6b0e47e587"

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  name "Chronos Timetracker"
  desc "Desktop client for JIRA and Trello"
  homepage "https://github.com/web-pal/chronos-timetracker"

  app "Chronos.app"

  zap trash: [
    "~/Library/Application Support/Chronos",
    "~/Library/Preferences/com.web-pal.chronos.plist",
    "~/Library/Saved Application State/com.web-pal.chronos.savedState",
  ]
end
