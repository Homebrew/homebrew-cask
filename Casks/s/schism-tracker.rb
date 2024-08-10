cask "schism-tracker" do
  version "20240809"
  sha256 "c94fab6be3f422a1dbec540270613d26d2769cc7ecf8d34da108929103f49a3d"

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
