cask "cycling74-max" do
  version "8.1.8_201027"
  sha256 "dff0739068c198fb9b34f8bca1c959422ed640882b282c6ef7b3d59e5391240e"

  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg",
      verified: "akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/"
  appcast "https://auth.cycling74.com/maxversion"
  name "Cycling ‘74 Max"
  name "Ableton Max for Live"
  homepage "https://cycling74.com/"

  app "Max.app"
end
