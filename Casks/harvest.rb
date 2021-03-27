cask "harvest" do
  version "2.2,203"
  sha256 "9f1beabe07e7a4d4bc10c9e30c7bcdf2c27cee4431e4517655082a9daaf83c0a"

  url "https://www.getharvest.com//harvest/mac/Harvest-#{version.before_comma}.zip"
  name "Harvest"
  desc "Time tracking application"
  homepage "https://www.getharvest.com/mac-time-tracking"

  livecheck do
    url "https://www.getharvest.com/harvest/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Harvest.app"
end
