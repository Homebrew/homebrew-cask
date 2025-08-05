cask "memory" do
  version "2023.11"
  sha256 :no_check

  url "https://memorymacapp.s3.amazonaws.com/Memory.zip",
      verified: "memorymacapp.s3.amazonaws.com/"
  name "Memory Tracker by Timely"
  desc "Time tracking software"
  homepage "https://memory.ai/timely/"

  livecheck do
    url "https://memorymacapp.s3.amazonaws.com/sparkle.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Memory.app"

  zap trash: [
    "~/Library/Application Support/Memory",
    "~/Library/Caches/com.timeapp.devlpmp.Timely-Mac-Tracker",
    "~/Library/Logs/Memory",
    "~/Library/Preferences/com.timeapp.devlpmp.Timely-Mac-Tracker.plist",
  ]
end
