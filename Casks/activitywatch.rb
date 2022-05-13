cask "activitywatch" do
  version "0.12.0b1"
  sha256 "e7e935c651a3ea7147b4f85d3cb9b6c29f90cab73dc03817fe56fac862d51fab"

  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-x86_64.dmg",
      verified: "github.com/ActivityWatch/activitywatch/"
  name "ActivityWatch"
  desc "Time tracker"
  homepage "https://activitywatch.net/"

  app "ActivityWatch.app"

  zap trash: "~/Library/Application Support/activitywatch"
end
