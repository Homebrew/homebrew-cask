cask "openmtp" do
  version "2.4.4"
  sha256 "25423e374b0c50763670a5368ecea19c01789906d31f14d02a1501d541ed31de"

  # github.com/ganeshrvel/openmtp/ was verified as official when first introduced to the cask
  url "https://github.com/ganeshrvel/openmtp/releases/download/v#{version}/OpenMTP-#{version}-mac.zip"
  appcast "https://github.com/ganeshrvel/openmtp/releases.atom"
  name "OpenMTP"
  homepage "https://ganeshrvel.github.io/openmtp"

  app "OpenMTP.app"

  zap trash: [
    "~/.io.ganeshrvel",
    "~/Library/Application Support/OpenMTP",
    "~/Library/Preferences/io.ganeshrvel.openmtp.plist",
  ]
end
