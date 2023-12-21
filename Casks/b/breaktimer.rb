cask "breaktimer" do
  version "1.2.0"
  sha256 "feebd9f838df0892664a1377f4e2cd568ffe823132390b82f6592da17d164566"

  url "https://github.com/tom-james-watson/breaktimer-app/releases/download/v#{version}/BreakTimer.dmg",
      verified: "github.com/tom-james-watson/breaktimer-app/"
  name "BreakTimer"
  desc "Tool to manage periodic breaks"
  homepage "https://breaktimer.app/"

  auto_updates true

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
