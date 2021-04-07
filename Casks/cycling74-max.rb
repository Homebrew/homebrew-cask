cask "cycling74-max" do
  version "8.1.10_210222"
  sha256 "b44f218fa00d279b3e55accfa583835e7d30e7228618e07bdec51110fc3f3b8a"

  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg",
      verified: "akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/"
  appcast "https://auth.cycling74.com/maxversion"
  name "Cycling ‘74 Max"
  name "Ableton Max for Live"
  homepage "https://cycling74.com/"

  app "Max.app"
end
