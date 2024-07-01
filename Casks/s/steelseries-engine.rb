cask "steelseries-engine" do
  version "3.22.0"
  sha256 "14267eeee45fbd95b9ee5ca49c3b2d33957ce5f088a455a74ccb48213310ce8f"

  url "https://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg",
      verified: "steelseriescdn.com/"
  name "SteelSeries Engine #{version.major}"
  desc "Settings for SteelSeries peripherals and accessories"
  homepage "https://steelseries.com/engine"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true
  conflicts_with cask: "steelseries-gg"
  depends_on macos: ">= :sierra"

  pkg "SteelSeriesEngine#{version}.pkg"

  uninstall launchctl: "com.steelseries.SSENext",
            quit:      [
              "com.steelseries.ssenext.client.*",
              "com.steelseries.ssenext.uninstaller",
              "com.steelseries.SteelSeries-Engine-#{version.major}",
            ],
            kext:      "com.steelseries.ssenext.driver",
            script:    [
              { executable: "/Applications/SteelSeries Engine #{version.major}/SteelSeries Engine #{version.major} Uninstaller.app/Contents/Resources/Uninstall.sh",
                sudo:       true },
            ],
            pkgutil:   "com.steelseries.*",
            delete:    "/Library/Application Support/SteelSeries Engine #{version.major}"

  zap trash: [
    "~/Library/Application Support/steelseries-engine-#{version.major}-client",
    "~/Library/Caches/com.steelseries.SteelSeries-Engine-#{version.major}",
    "~/Library/Logs/SteelSeries Engine #{version.major} Client",
    "~/Library/Preferences/com.steelseries.ssenext.client.helper.plist",
    "~/Library/Preferences/com.steelseries.ssenext.client.plist",
    "~/Library/Preferences/com.steelseries.SteelSeries-Engine-#{version.major}.plist",
    "~/Library/Saved Application State/com.steelseries.ssenext.client.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
