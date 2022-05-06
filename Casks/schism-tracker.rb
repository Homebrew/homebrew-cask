cask "schism-tracker" do
  version "20220125"
  sha256 :no_check

  url "https://github.com/schismtracker/schismtracker/releases/download/20220506/schismtracker-20220506-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "Schism Tracker.app"
end
