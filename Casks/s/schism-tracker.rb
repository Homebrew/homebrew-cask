cask "schism-tracker" do
  version "20250728"
  sha256 "da183ba39ae38fe1fb4b2bdcb036b3487beb77bb67d0c54e9c9b437a00449a0f"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)*)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Schism Tracker.app"

  zap trash: [
    "~/Library/Application Support/Schism Tracker",
    "~/Library/Saved Application State/org.schismtracker.SchismTracker.savedState",
  ]
end
