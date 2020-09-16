cask "schism-tracker" do
  version "20200412"
  sha256 "0f43b52949d60787eecc4fd5679f01694f114c17f6ee05a20d49ac995bfa6445"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-osx.tar.gz"
  appcast "https://github.com/schismtracker/schismtracker/releases.atom"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "schismtracker/Schism Tracker.app"
end
