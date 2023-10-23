cask "chronos" do
  version "6.1.0"
  sha256 "100375094187ea1f6cc97ce90ec54a807c6c80dcb6ab1f2a7012a181d1bae7f1"

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
