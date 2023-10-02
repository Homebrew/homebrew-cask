cask "schism-tracker" do
  version "20230906"
  sha256 "db138eb058f82a970735a174b0fb65b1840426512ac805af121dc40118ec622f"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "Schism Tracker.app"
end
