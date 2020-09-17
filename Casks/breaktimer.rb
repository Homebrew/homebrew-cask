cask "breaktimer" do
  version "0.7.5"
  sha256 "d549ce3694888f10f656ab38700e492b37eaaad7248ca6ccec0a27ec0be8c76e"

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
