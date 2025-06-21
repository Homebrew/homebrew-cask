cask "time-sink" do
  version "2.2.4"
  sha256 "6300ae766877918c286714fb8de093cc8b3e66adee287aae5693f946d91486bb"

  url "https://manytricks.com/download/_do_not_hotlink_/timesink#{version.no_dots}.dmg"
  name "Time Sink"
  desc "Tracks how you spend your time on your computer"
  homepage "https://manytricks.com/timesink/"

  livecheck do
    url "https://manytricks.com/timesink/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Time Sink.app"

  zap trash: [
    "~/Library/Preferences/com.manytricks.TimeSinkClient.plist",
    "~/Library/Time Sink",
  ]
end
