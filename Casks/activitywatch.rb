cask "activitywatch" do
  version "0.11.0"
  sha256 "91deabd5844968467b5b6b3423e12654d4e339ba309f333c25d991a2e689fd96"

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
