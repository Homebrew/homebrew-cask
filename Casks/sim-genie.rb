cask "sim-genie" do
  version "2020.4.241"
  sha256 "fe20d76efe98759d581674369537ba0dddf19cdf5210f108d13e945578c84189"

  # d1b3av25dd6jdq.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1b3av25dd6jdq.cloudfront.net/releases/macos/SimGenie.#{version}.zip"
  appcast "https://simgenie.app/releases/macos/appcast.xml"
  name "Sim Genie"
  homepage "https://simgenie.app/"

  depends_on macos: ">= :mojave"

  app "Sim Genie.app"
end
