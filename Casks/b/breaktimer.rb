cask "breaktimer" do
  version "2.0.0"
  sha256 "0d57215b1581c835a19ecd09e3df422970e605b9e92b5c6304e8874d78e44850"

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
