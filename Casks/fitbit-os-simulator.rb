cask "fitbit-os-simulator" do
  version "0.8.3"
  sha256 "ffa4bfd4a0629be2d780fc26334a0e246642c7ad033a355a6166e7a329b2011d"

  url "https://simulator-updates.fitbit.com/Fitbit%20OS%20Simulator-latest-#{version}.dmg"
  appcast "https://simulator-updates.fitbit.com/latest-mac.yml"
  name "Fitbit OS Simulator"
  homepage "https://dev.fitbit.com/"

  app "Fitbit OS Simulator.app"
end
