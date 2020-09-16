cask "milkytracker" do
  version "1.02.00"
  sha256 "b526497dc957454a4150e77b1f2f835ce564122e56f49bbe7b494dc984be076d"

  # github.com/milkytracker/MilkyTracker/ was verified as official when first introduced to the cask
  url "https://github.com/milkytracker/MilkyTracker/releases/download/v#{version}/milkytracker-#{version}.dmg"
  appcast "https://github.com/milkytracker/MilkyTracker/releases.atom"
  name "MilkyTracker"
  desc "Music tracker compatible with FT2"
  homepage "https://milkytracker.titandemo.org/"

  app "MilkyTracker.app"
end
