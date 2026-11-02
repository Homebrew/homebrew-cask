cask "fitbit-os-simulator" do
  version "0.9.4"
  sha256 "b948c2b0e44d69b257215233e8b7018fdaa42d8e65ede2145f2d58145fbe86f3"

  url "https://simulator-updates.fitbit.com/Fitbit%20OS%20Simulator-stable-#{version}.dmg"
  name "Fitbit OS Simulator"
  desc "Build apps and clock faces for Fitbit"
  homepage "https://dev.fitbit.com/"

  livecheck do
    url "https://simulator-updates.fitbit.com/stable-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Fitbit OS Simulator.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fitbit.os.simulator.sfl*",
    "~/Library/Application Support/Fitbit OS Simulator",
    "~/Library/Caches/@fitbitsimulator-updater",
    "~/Library/Caches/com.fitbit.os.simulator.ShipIt",
    "~/Library/Logs/Fitbit OS Simulator",
    "~/Library/Preferences/com.fitbit.os.simulator.plist",
    "~/Library/Saved Application State/com.fitbit.os.simulator.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
