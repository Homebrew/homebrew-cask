cask "openmtp" do
  version "3.0.0"
  sha512 "U2iMdJuQMqSqmBzWHw+M5ENwrFXuoBql0gOOMlQfYHMVFDm1/8dP9qPI9RZ5VbzUwMRZlrmMhaTdW0+SyXGaGQ=="

  url "https://github.com/ganeshrvel/openmtp/releases/download/v#{version}/OpenMTP-#{version}-mac.zip",
      verified: "github.com/ganeshrvel/openmtp/"
  appcast "https://github.com/ganeshrvel/openmtp/releases.atom"
  name "OpenMTP"
  homepage "https://openmtp.ganeshrvel.com/"

  app "OpenMTP.app"

  zap trash: [
    "~/.io.ganeshrvel",
    "~/Library/Application Support/OpenMTP",
    "~/Library/Preferences/io.ganeshrvel.openmtp.plist",
    "~/Library/Application Support/io.ganeshrvel.openmtp",
  ]
end
