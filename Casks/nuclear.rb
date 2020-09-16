cask "nuclear" do
  version "0.6.5"
  sha256 "405b9eda43dabd29a8e4048779209cc409366ac6a619e4412368b733f85bf55c"

  # github.com/nukeop/nuclear/ was verified as official when first introduced to the cask
  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-#{version}.dmg"
  appcast "https://github.com/nukeop/nuclear/releases.atom"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
