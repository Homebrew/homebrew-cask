cask "ev3-classroom" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.1.1"
  sha256 "3df3347be4912af6457afc1731328daecc8161a38ef09231b26cdcd9aa59c5ab"

  url "https://le-www-live-s.legocdn.com/downloads/LME-Scratch/LME-Scratch_Full-setup_#{version}_en-US_MacOS.dmg",
      verified: "le-www-live-s.legocdn.com/downloads/LME-Scratch/"
  name "EV3 Classroom"
  desc "Companion app for the LEGO MINDSTORMS Education EV3 Core Set"
  homepage "https://education.lego.com/en-us/downloads/mindstorms-ev3/software"

  depends_on macos: ">= :mojave"

  app "EV3 Classroom.app"
end
