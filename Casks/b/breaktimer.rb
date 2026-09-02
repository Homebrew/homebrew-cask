cask "breaktimer" do
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.0.3"

  on_macos do
    sha256 "2b5d3d3a8b9b85c5f41b4eb4384a341ecf6d7d2c0b377619e051a97ceb9ebfdd"

    depends_on macos: :big_sur

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
  on_linux do
    sha256 "e3cae710a2ce9b54ff4a2a8a8e6a611f4bb6a04cac2053827acacf07b5aa7809"

    depends_on arch: :x86_64

    app_image "BreakTimer.AppImage", target: "BreakTimer.AppImage"
  end

  url "https://github.com/tom-james-watson/breaktimer-app/releases/download/v#{version}/BreakTimer.#{url_end}"
  name "BreakTimer"
  desc "Tool to manage periodic breaks"
  homepage "https://breaktimer.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
