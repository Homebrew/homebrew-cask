cask "activitywatch" do
  version "0.13.0"
  sha256 "81bccef0282313f7a4199a05942a706dad518ad8af04a503adfe6f37100e7130"

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
