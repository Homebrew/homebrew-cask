cask "breaktimer" do
  version "0.7.6"
  sha256 "a62d46779216a08fd03884375c7d961521b9ac32efd8874dca2377c27aa82053"

  # github.com/tom-james-watson/breaktimer-app/ was verified as official when first introduced to the cask
  url "https://github.com/tom-james-watson/breaktimer-app/releases/download/v#{version}/BreakTimer.dmg"
  appcast "https://github.com/tom-james-watson/breaktimer-app/releases.atom"
  name "BreakTimer"
  desc "Tool to manage periodic breaks"
  homepage "https://breaktimer.app/"

  auto_updates true

  app "BreakTimer.app"
  binary "#{appdir}/BreakTimer.app/Contents/MacOS/BreakTimer", target: "breaktimer"

  uninstall quit:      "com.tomjwatson.breaktimer",
            launchctl: "com.tomjwatson.breaktimer.ShipIt"

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
