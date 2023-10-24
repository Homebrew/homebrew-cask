cask "chronos" do
  version "6.2.0"
  sha256 "05f417132d97fbc580051ed05d98976878a90b92fbe5b3ebaca1916290148ad0"

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
