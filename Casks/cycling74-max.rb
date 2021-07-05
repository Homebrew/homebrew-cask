cask "cycling74-max" do
  version "8.1.11_210413"
  sha256 "6f6373ef8bfc6029b84805b01a9e6191ee0574833c41b9d188a7fa41e94eebac"

  url "https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max#{version.no_dots}.dmg",
      verified: "akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/"
  appcast "https://auth.cycling74.com/maxversion"
  name "Cycling ‘74 Max"
  name "Ableton Max for Live"
  desc "Flexible space to create your own interactive software"
  homepage "https://cycling74.com/"

  app "Max.app"
end
