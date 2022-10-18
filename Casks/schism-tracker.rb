cask "schism-tracker" do
  version "20220905"
  sha256 "61919abd757c59e927dbbaf1d30a00e88b3d6973380a793498ab32f415022fde"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "Schism Tracker.app"
end
