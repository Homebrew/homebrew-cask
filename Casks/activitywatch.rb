cask "activitywatch" do
  version "0.12.0"
  sha256 "4d5325c97ddf164c01a7ac5a5e4eed2ef1794d61534560c8e059c42796a332dc"

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
