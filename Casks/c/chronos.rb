cask "chronos" do
  version "6.3.2"
  sha256 "b1e05936bea014b823b82436dd46c18c7b4c4fc981d71d633159874353441878"

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  name "Chronos Timetracker"
  desc "Desktop client for JIRA and Trello"
  homepage "https://github.com/web-pal/chronos-timetracker"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Chronos.app"

  zap trash: [
    "~/Library/Application Support/Chronos",
    "~/Library/Preferences/com.web-pal.chronos.plist",
    "~/Library/Saved Application State/com.web-pal.chronos.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
