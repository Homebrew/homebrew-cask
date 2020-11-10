cask "ev3-classroom" do
  version "1.1.1"
  sha256 "3df3347be4912af6457afc1731328daecc8161a38ef09231b26cdcd9aa59c5ab"

  # le-www-live-s.legocdn.com/downloads/LME-Scratch/ was verified as official when first introduced to the cask
  url "https://le-www-live-s.legocdn.com/downloads/LME-Scratch/LME-Scratch_Full-setup_#{version}_en-US_MacOS.dmg"
  name "EV3 Classroom"
  desc "Companion app for the LEGO MINDSTORMS Education EV3 Core Set"
  homepage "https://www.lego.com/en-us/mindstorms"

  app "EV3 Classroom.app"
end
