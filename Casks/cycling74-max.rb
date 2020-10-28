cask "cycling74-max" do
  version "8.1.7_201013"
  sha256 "ef1d48a14baedffeef3a8be2b5b7cc0aa5c94f2bc83c7475389ca6e411b5cc52"

  # akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg"
  appcast "https://auth.cycling74.com/maxversion"
  name "Cycling ‘74 Max"
  name "Ableton Max for Live"
  homepage "https://cycling74.com/"

  app "Max.app"
end
