cask "schism-tracker" do
  version "20220506"
  sha256 "f2265e58e5c932ec35cde29d5133dd87f45d851dc0ad4bfcb2666305455fb1d5"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "Schism Tracker.app"
end
