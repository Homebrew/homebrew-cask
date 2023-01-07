cask "fitbit-os-simulator" do
  version "0.9.5"
  sha256 "bf5862a7aabdddb5d01c75f2babdfe880ca60fcae346ccdaaa5fba0bfba382a6"

  url "https://simulator-updates.fitbit.com/Fitbit%20OS%20Simulator-latest-#{version}.dmg"
  name "Fitbit OS Simulator"
  desc "Build apps and clock faces for Fitbit"
  homepage "https://dev.fitbit.com/"

  livecheck do
    url "https://simulator-updates.fitbit.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Fitbit OS Simulator.app"
end
