cask "steelseries-gg" do
  version "54.1.0"
  sha256 "6401a45929c03d2c6d67865e87b355815bae32940f4e4cf74c2e5378675008b3"

  url "https://engine.steelseriescdn.com/SteelSeriesGG#{version}.pkg",
      verified: "engine.steelseriescdn.com/"
  name "SteelSeries GG #{version.major}"
  desc "Settings for SteelSeries peripherals and accessories"
  homepage "https://steelseries.com/gg"

  livecheck do
    url "https://steelseries.com/gg/downloads/gg/latest/darwin"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "steelseries-engine"
  depends_on macos: ">= :sierra"

  pkg "SteelSeriesGG#{version}.pkg"

  uninstall launchctl: "com.steelseries.SSENext",
            quit:      [
              "com.steelseries.gg.client.*",
              "com.steelseries.gg.uninstaller",
              "com.steelseries.SteelSeries-GG",
            ],
            kext:      [
              "com.steelseries.ssenext.driver",
              "com.highpoint-tech.kext.HighPointIOP",
              "com.highpoint-tech.kext.HighPointRR",
            ],
            script:    {
              executable: "/Applications/SteelSeries GG/SteelSeries GG Uninstaller.app/Contents/Resources/Uninstall.sh",
              sudo:       true,
            },
            pkgutil:   "com.steelseries.*",
            delete:    [
              "/Applications/SteelSeries GG/SteelSeries GG.app",
              "/Library/Application Support/SteelSeries GG",
            ]

  zap trash: [
    "~/Library/Application Support/steelseries-gg-client",
    "~/Library/Caches/com.steelseries.SteelSeries-GG",
    "~/Library/Preferences/com.steelseries.gg.client.plist",
    "~/Library/Preferences/com.steelseries.SteelSeries-GG.plist",
    "~/Library/Saved Application State/com.steelseries.gg.client.savedState",
    "~/Library/Saved Application State/com.steelseries.gg.uninstaller.savedState",
  ]
end
