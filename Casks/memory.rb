cask "memory" do
  version "2020.18"
  sha256 "f2d614b5aa8b2b57fca6846bec63ea192da941982e52896b13abc12c24a2ae5f"

  # memorymacapp.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://memorymacapp.s3.amazonaws.com/Memory.zip"
  appcast "https://memorymacapp.s3-eu-west-1.amazonaws.com/sparkle.xml"
  name "Memory Tracker by Timely"
  homepage "https://memory.ai/timely/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Memory.app"
end
