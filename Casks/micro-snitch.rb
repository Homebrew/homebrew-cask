cask "micro-snitch" do
  version "1.4"
  sha256 "fc5e4fc14d7eed0508bddb03a074c4ce4aff1bc481698ce26ce95f59dc260a96"

  url "https://www.obdev.at/downloads/MicroSnitch/MicroSnitch-#{version}.dmg"
  name "Micro Snitch"
  desc "Monitors and reports any microphone and camera activity"
  homepage "https://www.obdev.at/products/microsnitch/index.html"

  livecheck do
    url "https://www.obdev.at/products/microsnitch/download.html"
    strategy :page_match
    regex(%r{href=.*?/MicroSnitch-(\d+(?:\.\d+)*)\.dmg}i)
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
