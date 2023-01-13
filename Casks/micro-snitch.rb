cask "micro-snitch" do
  version "1.6"
  sha256 "1db8247eb47a717b86c8ea5623403781e062747bb831ad907741eb747d0c5a45"

  url "https://www.obdev.at/downloads/MicroSnitch/MicroSnitch-#{version}.dmg"
  name "Micro Snitch"
  desc "Monitors and reports any microphone and camera activity"
  homepage "https://www.obdev.at/products/microsnitch/index.html"

  livecheck do
    url "https://www.obdev.at/products/microsnitch/download.html"
    regex(%r{href=.*?/MicroSnitch[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

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
