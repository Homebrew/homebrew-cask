cask "steelseries-gg" do
  version "65.0.0"
  sha256 "230136130b4e0a82580199e07d0fa770acaeeb578d5089b468ff1f1d96cd0f07"

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
            kext:      "com.steelseries.ssenext.driver",
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

  caveats do
    requires_rosetta
  end
end
