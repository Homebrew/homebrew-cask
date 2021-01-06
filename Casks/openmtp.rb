cask "openmtp" do
  version "3.0.0"
  sha256 "a77ca47ee572c570eba4cccc6c641b407895d350a654ca8affdda5a4325b8931"

  url "https://github.com/ganeshrvel/openmtp/releases/download/v#{version}/OpenMTP-#{version}-mac.zip",
      verified: "github.com/ganeshrvel/openmtp/"
  appcast "https://github.com/ganeshrvel/openmtp/releases.atom"
  name "OpenMTP"
  homepage "https://openmtp.ganeshrvel.com/"

  app "OpenMTP.app"

  zap trash: [
    "~/.io.ganeshrvel",
    "~/Library/Application Support/io.ganeshrvel.openmtp",
    "~/Library/Application Support/OpenMTP",
    "~/Library/Preferences/io.ganeshrvel.openmtp.plist",
  ]
end
