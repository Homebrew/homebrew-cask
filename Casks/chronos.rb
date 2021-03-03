cask "chronos" do
  version "5.0.1"
  sha256 "3130fcd1b0f62d88aa9f3f3b11f82ed359418377a0240b321c4975254285fbd4"

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast "https://github.com/web-pal/chronos-timetracker/releases.atom"
  name "Chronos Timetracker"
  homepage "https://github.com/web-pal/chronos-timetracker"

  app "Chronos.app"
  desc "Desktop client for JIRA. Track time, upload automatic and manual worklogs without a hassle. Cross-platform. Open-sourced."

  zap trash: [
    "~/Library/Application Support/Chronos",
    "~/Library/Preferences/com.web-pal.chronos.plist",
    "~/Library/Saved Application State/com.web-pal.chronos.savedState",
  ]
end
