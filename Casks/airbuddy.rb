cask "airbuddy" do
  version "2.3-275"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://su.airbuddy.app/kCRSAmcjBc/AirBuddy_v#{version}.dmg"
  appcast "https://su.airbuddy.app/kCRSAmcjBc/appcast_hyeon.xml"
  name "Airbuddy"
  desc "AirPods companion app"
  homepage "https://v2.airbuddy.app/"

  auto_updates true

  app "AirBuddy.app"
end
