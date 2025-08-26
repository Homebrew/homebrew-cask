cask "schism-tracker" do
  version "20250825"
  sha256 "90c42a5cf587c4cd711d587d51ba27f63c9c917abc6e182e8346c60647aea8fe"

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
