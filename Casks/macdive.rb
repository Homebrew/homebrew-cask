cask "macdive" do
  version "2.12.0"
  sha256 "6a41df499fba9cf5862287fb0f2e28800115742b658273cf74d9ac44677195b1"

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast "https://www.mac-dive.com/shimmer/?appcast&appName=MacDive"
  name "MacDive"
  homepage "https://www.mac-dive.com/"

  app "MacDive.app"
end
