cask "breaktimer" do
  version "0.7.7"
  sha256 "01fb90a307e2ffb59bb38c683032856aeeff8b5b8b7b0923d4ee307bb34cf2dd"

  url "https://github.com/tom-james-watson/breaktimer-app/releases/download/v#{version}/BreakTimer.dmg",
      verified: "github.com/tom-james-watson/breaktimer-app/"
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
