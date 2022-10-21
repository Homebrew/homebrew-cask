cask "schism-tracker" do
  version "20221020"
  sha256 "afc17e33ed485076fb3549bbcf62527ffbdbad0f5535bff69efc1aa01899e0b2"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "Schism Tracker.app"
end
