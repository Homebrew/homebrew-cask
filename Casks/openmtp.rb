cask "openmtp" do
  version "3.1.0"
  sha256 "d2fa00c7f76ec35892c28e50b52c72c99acd6be02d72f7b2eb0a18022a3c6900"

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
