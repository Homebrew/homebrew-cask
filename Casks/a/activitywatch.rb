cask "activitywatch" do
  version "0.12.2"
  sha256 "804dd3eda377d62ac2e2d0590eced2d93ff9759594299858b7cf783294c25908"

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
