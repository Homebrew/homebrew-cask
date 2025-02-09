cask "schism-tracker" do
  version "20250208"
  sha256 "7c5e29104343eccddeb9f15df0521fe8b4aff33550aa81f1fcdb64306eacce16"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "Schism Tracker.app"

  zap trash: [
    "~/Library/Application Support/Schism Tracker",
    "~/Library/Saved Application State/org.schismtracker.SchismTracker.savedState",
  ]
end
