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

  app "Fitbit OS Simulator.app"

  caveats do
    requires_rosetta
  end
end
