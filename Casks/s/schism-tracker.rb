cask "schism-tracker" do
  version "20230906"
  sha256 "3424f99611484b4859ad86d2cb8ed344cce26e4f1623d56ad12e06cddb09ee19"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "Schism Tracker.app"
end
