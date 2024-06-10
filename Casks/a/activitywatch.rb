cask "activitywatch" do
  version "0.13.1"
  sha256 "dfe4a7ab1a92307ec3e1e6ee649d76907974f4a5de8fa7719f5740040ff7ca3c"

  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-x86_64.dmg",
      verified: "github.com/ActivityWatch/activitywatch/"
  name "ActivityWatch"
  desc "Time tracker"
  homepage "https://activitywatch.net/"

  livecheck do
    url "https://activitywatch.net/downloads/"
    regex(/href=.*?activitywatch[._-]v?(\d+(?:\.\d+)+)-macos-x86_64\.dmg/i)
  end

  app "ActivityWatch.app"

  zap trash: [
    "~/Library/Application Support/activitywatch",
    "~/Library/Caches/activitywatch",
    "~/Library/Logs/activitywatch",
  ]
end
