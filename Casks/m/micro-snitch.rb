cask "micro-snitch" do
  version "1.6.1"
  sha256 "700a265156ae7c8138d7764a0ce87feba098bcaf77deed9b8d9aaa0b3c4fa197"

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

  uninstall launchctl: "at.obdev.MicroSnitchOpenAtLoginHelper",
            quit:      "at.obdev.MicroSnitch"

  zap trash: [
    "~/Library/Application Support/at.obdev.MicroSnitchOpenAtLoginHelper",
    "~/Library/Application Support/Micro Snitch",
    "~/Library/Caches/at.obdev.MicroSnitch",
    "~/Library/Containers/at.obdev.MicroSnitchOpenAtLoginHelper",
    "~/Library/Logs/Micro Snitch.log",
    "~/Library/Preferences/at.obdev.MicroSnitch.plist",
  ]
end
