cask "raiderio" do
  version "2.0.0"
  sha256 "0877dc04541f92749f9c0c900bf067368dc2b2966368c7eaeff1e6bbb394a2b6"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg",
      verified: "github.com/RaiderIO/raiderio-client-builds/"
  name "RaiderIO Client"
  homepage "https://raider.io/"

  livecheck do
    url :url
    strategy :git
  end

  app "RaiderIO.app"
end
