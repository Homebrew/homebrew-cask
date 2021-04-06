cask "macdive" do
  version "2.13.1"
  sha256 "8d2522e2cacfcd416095153f7bc930bba12d3de6803db2e63d6cfc2672367ef7"

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast "https://www.mac-dive.com/shimmer/?appcast&appName=MacDive"
  name "MacDive"
  homepage "https://www.mac-dive.com/"

  app "MacDive.app"
end
