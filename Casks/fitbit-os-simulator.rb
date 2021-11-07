cask "fitbit-os-simulator" do
  version "0.9.2"
  sha256 "966ba0934d8b2ac237251dea0e19472b2bb4b654b4f3fcb0091b7a150b92c3af"

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
