cask "steelseries-gg" do
  version "69.0.0"
  sha256 "4dd66b7059d9138a9e49f41bb53292a93549f19c3f5bda45ac6891be97eda2f2"

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
