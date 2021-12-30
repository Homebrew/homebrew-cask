cask "schism-tracker" do
  version "20211116"
  sha256 "3079c4d533c5f4d062279e10b9cddaf0a7c7147fb84c433a427d3475dfe20d6c"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "Schism Tracker.app"
end
