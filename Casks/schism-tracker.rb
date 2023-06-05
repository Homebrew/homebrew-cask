cask "schism-tracker" do
  version "20221201"
  sha256 "02e9761f8b385b81b3ccd4945ca70e995705866babcd87c90f06fb824973b8ef"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "Schism Tracker.app"
end
