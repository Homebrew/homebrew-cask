cask "schism-tracker" do
  version "20220125"
  sha256 "4d010b3a4e64a3bf7672affbefe872f43033a7830cf3ba44dda230c4afa2a770"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "Schism Tracker.app"
end
