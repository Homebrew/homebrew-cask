cask "activitywatch" do
  version "0.10.0"
  sha256 "b727ca526d63177f5617918ee0456bed938f35de6c20d53b718ac3865ac7b978"

  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-x86_64.dmg",
      verified: "github.com/ActivityWatch/activitywatch/"
  appcast "https://github.com/ActivityWatch/activitywatch/releases.atom"
  name "ActivityWatch"
  desc "Time tracker"
  homepage "https://activitywatch.net/"

  app "ActivityWatch.app"

  zap trash: "~/Library/Application Support/activitywatch"
end
