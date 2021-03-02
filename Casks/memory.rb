cask "memory" do
  version "2021.01,259"
  sha256 :no_check

  url "https://memorymacapp.s3.amazonaws.com/Memory.zip",
      verified: "memorymacapp.s3.amazonaws.com/"
  name "Memory Tracker by Timely"
  homepage "https://memory.ai/timely/"

  livecheck do
    url "https://memorymacapp.s3-eu-west-1.amazonaws.com/sparkle.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Memory.app"
end
