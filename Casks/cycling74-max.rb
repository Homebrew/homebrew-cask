cask "cycling74-max" do
  version "8.1.6_200922"
  sha256 "231c2b9e7a2a2e54723d7d1588e13c10976442784a1d65e9b423a88b12ed5c88"

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  appcast "https://auth.cycling74.com/maxversion"
  name "Cycling ‘74 Max"
  name "Ableton Max for Live"
  homepage "https://cycling74.com/"

  app "Max.app"
end
