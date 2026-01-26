cask "breaktimer" do
  version "2.0.3"
  sha256 "2b5d3d3a8b9b85c5f41b4eb4384a341ecf6d7d2c0b377619e051a97ceb9ebfdd"

  url "https://github.com/tom-james-watson/breaktimer-app/releases/download/v#{version}/BreakTimer.dmg",
      verified: "github.com/tom-james-watson/breaktimer-app/"
  name "BreakTimer"
  desc "Tool to manage periodic breaks"
  homepage "https://breaktimer.app/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "BreakTimer.app"
  binary "#{appdir}/BreakTimer.app/Contents/MacOS/BreakTimer", target: "breaktimer"

  uninstall launchctl: "com.tomjwatson.breaktimer.ShipIt",
            quit:      "com.tomjwatson.breaktimer"

  zap trash: [
    "~/Library/Application Support/BreakTimer",
    "~/Library/Caches/com.tomjwatson.breaktimer",
    "~/Library/Caches/com.tomjwatson.breaktimer.ShipIt",
    "~/Library/Logs/BreakTimer",
    "~/Library/Preferences/ByHost/com.tomjwatson.breaktimer.ShipIt.*.plist",
    "~/Library/Preferences/com.tomjwatson.breaktimer.plist",
    "~/Library/Saved Application State/com.tomjwatson.breaktimer.savedState",
  ]
end
