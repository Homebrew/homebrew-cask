cask "memory" do
  version "2020.23,237"
  sha256 :no_check

  # memorymacapp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://memorymacapp.s3.amazonaws.com/Memory.zip"
  appcast "https://memorymacapp.s3-eu-west-1.amazonaws.com/sparkle.xml"
  name "Memory Tracker by Timely"
  homepage "https://memory.ai/timely/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Memory.app"
end
