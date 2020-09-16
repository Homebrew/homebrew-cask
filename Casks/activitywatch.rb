cask "activitywatch" do
  version "0.9.2"
  sha256 "3eecc1f61984428d4708785e9740d350a1ee5bdb8a2b5b480344121069ac5ffa"

  # github.com/ActivityWatch/activitywatch/ was verified as official when first introduced to the cask
  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-x86_64.dmg"
  appcast "https://github.com/ActivityWatch/activitywatch/releases.atom"
  name "ActivityWatch"
  desc "Cross-platform time tracking app"
  homepage "https://activitywatch.net/"

  app "ActivityWatch.app"

  zap trash: "~/Library/Application Support/activitywatch"
end
