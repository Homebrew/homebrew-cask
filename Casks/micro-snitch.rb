cask "micro-snitch" do
  version "1.3.1"
  sha256 "9a909b7a73de527a0d3b446dead7d40b12f71e81cb324484db3a8b1579b5d28a"

  url "https://www.obdev.at/downloads/MicroSnitch/MicroSnitch-#{version}.zip"
  appcast "https://www.obdev.at/products/microsnitch/download.html"
  name "Micro Snitch"
  desc "Monitors and reports any microphone and camera activity"
  homepage "https://www.obdev.at/products/microsnitch/index.html"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Micro Snitch.app"

  uninstall quit:      "at.obdev.MicroSnitch",
            launchctl: "at.obdev.MicroSnitchOpenAtLoginHelper"

  zap trash: [
    "~/Library/Application Support/at.obdev.MicroSnitchOpenAtLoginHelper",
    "~/Library/Application Support/Micro Snitch",
    "~/Library/Caches/at.obdev.MicroSnitch",
    "~/Library/Containers/at.obdev.MicroSnitchOpenAtLoginHelper",
    "~/Library/Logs/Micro Snitch.log",
    "~/Library/Preferences/at.obdev.MicroSnitch.plist",
  ]
end
