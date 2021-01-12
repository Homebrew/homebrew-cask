cask "raiderio" do
  version "2.0.2"
  sha256 "919e1e461f68e73f517240342524ead80c024ce8791491390dfbbeea1a33ba73"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg",
      verified: "github.com/RaiderIO/raiderio-client-builds/"
  appcast "https://github.com/RaiderIO/raiderio-client-builds/releases.atom"
  name "RaiderIO Client"
  homepage "https://raider.io/"

  app "RaiderIO.app"
end
