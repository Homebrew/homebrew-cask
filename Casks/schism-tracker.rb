cask "schism-tracker" do
  version "20220807"
  sha256 "8f8e63d4d4f520b9a640246abaaea384e9b5a2466c8597bde77100beb549571c"

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-macos.zip"
  name "Schism Tracker"
  desc "Oldschool sample-based music composition tool"
  homepage "https://github.com/schismtracker/schismtracker"

  app "Schism Tracker.app"
end
