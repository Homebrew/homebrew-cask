cask "macdive" do
  version "2.12.1"
  sha256 "46868ad5fa66ffea156870d1324e8b6dcf60632615e49b4ac56818e996588cf7"

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  appcast "https://www.mac-dive.com/shimmer/?appcast&appName=MacDive"
  name "MacDive"
  homepage "https://www.mac-dive.com/"

  app "MacDive.app"
end
