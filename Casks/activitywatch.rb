cask "activitywatch" do
  version "0.12.0b2"
  sha256 "208a9803aeee108c9c697be0a5f250e1d01b5410138efe38fa85544f9e5219ae"

  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-x86_64.dmg",
      verified: "github.com/ActivityWatch/activitywatch/"
  name "ActivityWatch"
  desc "Time tracker"
  homepage "https://activitywatch.net/"

  app "ActivityWatch.app"

  zap trash: "~/Library/Application Support/activitywatch"
end
