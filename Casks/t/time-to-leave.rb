cask "time-to-leave" do
  version "4.0.0"
  sha256 "c9550185217167a9257d05b550ff48780058d6c031a99660302528af205d2068"

  url "https://github.com/TTLApp/time-to-leave/releases/download/#{version}/time-to-leave-#{version}.dmg"
  name "Time To Leave"
  desc "Log work hours and get notified when it's time to leave the office"
  homepage "https://github.com/TTLApp/time-to-leave"

  # A tag using the stable version format is sometimes marked as "Pre-release"
  # on the GitHub releases page, so we have to use the `GithubLatest` strategy.
  livecheck do
    url :url
    regex(/^\D*?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Time To Leave.app"

  zap trash: [
    "~/Library/Preferences/com.electron.time-to-leave.plist",
    "~/Library/Saved Application State/com.electron.time-to-leave.savedState",
  ]
end
