cask "milkytracker" do
  version "1.03.00"
  sha256 "21c7261805e800602843a575b55993d87530aa075cc4ee4bd3978e30e3a2bc29"

  url "https://github.com/milkytracker/MilkyTracker/releases/download/v#{version}/milkytracker-#{version}-macos.dmg",
      verified: "github.com/milkytracker/MilkyTracker/"
  name "MilkyTracker"
  desc "Music tracker compatible with FT2"
  homepage "https://milkytracker.titandemo.org/"

  app "MilkyTracker.app"
end
