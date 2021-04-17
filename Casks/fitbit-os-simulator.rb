cask "fitbit-os-simulator" do
  version "0.9.0"
  sha256 "6ed38b6b9e327412dc702af4874c04338977b186f93597b84070a9f1233078f8"

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
