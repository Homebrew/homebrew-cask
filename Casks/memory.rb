cask "memory" do
  version "2020.20"
  sha256 "f03620630c4253e6eff0260a455da120de200a9c1f66e5473c172e4f09ab0d08"

  # memorymacapp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://memorymacapp.s3.amazonaws.com/Memory.zip"
  appcast "https://memorymacapp.s3-eu-west-1.amazonaws.com/sparkle.xml"
  name "Memory Tracker by Timely"
  homepage "https://memory.ai/timely/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Memory.app"
end
